# Person model
class Person < ApplicationRecord
  extend CreateOrUpdateByKeysExtension
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  translates :saying, :string
  translates :introduction, :text
  globalize_accessors locales: I18n.available_locales,
                      attributes: translated_attribute_names

  has_many :contributions, dependent: :destroy
  has_many :projects, -> { distinct }, through: :contributions

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
