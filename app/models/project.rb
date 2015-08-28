# Project class
class Project < ActiveRecord::Base
  mount_uploader :thumbnail, ThumbnailUploader
  translates :description, :text
  translates :subtitle, :string

  has_many :images
  has_many :contributions
  has_many :people, -> { distinct }, through: :contributions

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
