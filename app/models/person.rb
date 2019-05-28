class Person < ApplicationRecord
  extend FriendlyId
  friendly_id :nickname, use: [:slugged, :finders]
  translates :introduction, :saying

  has_many :contributions, dependent: :destroy
  has_many :projects, -> { distinct }, through: :contributions

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
