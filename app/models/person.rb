# Person model
class Person < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  translates :saying, :string
  translates :introduction, :text
  globalize_accessors locales: I18n.available_locales,
                      attributes: translated_attribute_names

  has_many :contributions
  has_many :projects, -> { distinct }, through: :contributions

  def self.create_or_update_by_keys!(params, keys)
    object = nil
    keys.each do |key|
      object = find_by("#{key} = ?", params[key]) unless params[key].present?
      break if object
    end
    object ? object.update(params) : create(params)
  end

  def name
    nickname || fullname.try(:permanent)
  end

  def project_with_contributions(project)
    contributions.includes(:translations).where(project: project)
  end

  def skill_list
    skills.split(',')
  end

  def technology_list
    technologies.split(',')
  end
end
