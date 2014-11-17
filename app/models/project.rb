# Project class
class Project < ActiveRecord::Base
  mount_uploader :thumbnail, ThumbnailUploader

  has_many :images

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
