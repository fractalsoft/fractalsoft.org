# frozen_string_literal: true

class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: :slugged
  mount_uploader :thumbnail, ThumbnailUploader
  translates :description, :introduction, :subtitle

  has_many :images, dependent: :nullify
  has_many :contributions, dependent: :nullify
  has_many :people, -> { distinct }, through: :contributions

  # the newest projects are the most important
  default_scope { order('year DESC') }

  validates :title, presence: true

  def logo_image
    images.logo
  end

  def page_images
    images.pages
  end

  def pc_image
    images.pc
  end

  def top_image
    images.top
  end
end
