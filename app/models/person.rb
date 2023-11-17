class Person < ApplicationRecord
  LINK_NAMES = %w[
    blog
    facebook
    github
    instagram
    linkedin
    twitter
    vimeo
    website
    youtube
  ].freeze

  extend FriendlyId
  friendly_id :nickname, use: [:slugged, :finders]
  translates :introduction, :saying

  scope :published, -> { where(published: true) }
  scope :sorted, -> { order(position: :asc) }

  has_many :contributions, dependent: :destroy
  has_many :projects, -> { distinct }, through: :contributions
  has_many :technological_skills, -> { sorted }, inverse_of: :person, dependent: :destroy
  has_many :technologies, through: :technological_skills

  def project_with_contributions(project)
    contributions.includes(:translations).where(project:).order(position: :asc)
  end

  def skill_list
    skills.split(',')
  end
end
