# frozen_string_literal: true

class Image < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :project, optional: true

  def self.logo
    find_by(kind: 'logo')
  end

  def self.pages
    where(kind: 'page')
  end

  def self.pc
    find_by(kind: 'pc')
  end

  def self.top
    find_by(kind: 'top')
  end
end
