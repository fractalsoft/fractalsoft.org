# Project class
class Project < ActiveRecord::Base
  mount_uploader :thumbnail, ThumbnailUploader

  has_many :images
end
