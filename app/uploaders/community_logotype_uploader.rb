# frozen_string_literal: true

class CommunityLogotypeUploader < ImageUploader
  process resize_to_fit: [256, 256]
  process convert: 'png'
end
