# Project class
class Project < ActiveRecord::Base
  extend CreateOrUpdateByKeysExtension
  mount_uploader :thumbnail, ThumbnailUploader
  translates :subtitle, :string
  translates :introduction, :text
  translates :description, :text
  globalize_accessors locales: I18n.available_locales,
                      attributes: translated_attribute_names

  has_many :images
  has_many :contributions
  has_many :people, -> { distinct }, through: :contributions

  # the newest projects are the most important
  default_scope { order('year DESC') }

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
