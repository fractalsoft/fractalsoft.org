# Person model
class Person < ActiveRecord::Base
  mount_uploader :image, AvatarUploader
end
