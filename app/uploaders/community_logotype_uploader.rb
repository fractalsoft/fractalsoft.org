class CommunityLogotypeUploader < ImageUploader
  process resize_to_fit: [128, 128]
  process convert: 'png'
end
