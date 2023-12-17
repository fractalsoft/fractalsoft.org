# frozen_string_literal: true

class ThumbnailUploader < ImageUploader
  version :thumb do
    process resize_to_fill: [300, 150]
  end
end
