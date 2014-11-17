# Image class
class Image < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :project

  def self.logo
    where(kind: 'logo').first
  end

  def self.pages
    where(kind: 'page')
  end

  def self.pc
    where(kind: 'pc').first
  end

  def self.top
    where(kind: 'top').first
  end
end
