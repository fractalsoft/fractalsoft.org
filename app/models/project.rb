# Project class
class Project < ActiveRecord::Base
  mount_uploader :thumbnail, ThumbnailUploader
end
