class Person < ApplicationRecord
  extend FriendlyId
  friendly_id :nickname, use: [:slugged, :finders]
  translates :introduction, :saying

  has_many :contributions, dependent: :destroy
  has_many :projects, -> { distinct }, through: :contributions
  has_many :technological_skills, dependent: :destroy
  has_many :technologies, through: :technological_skills

  def project_with_contributions(project)
    contributions.includes(:translations).where(project: project)
  end

  def skill_list
    skills.split(',')
  end
end
