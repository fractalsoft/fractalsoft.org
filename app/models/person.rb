# Person model
class Person < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  translates :introduction, :text

  has_many :contributions
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
