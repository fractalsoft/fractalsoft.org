# Avatar uploader
class AvatarUploader < ImageUploader
  version :thumb do
    process resize_to_fill: [256, 256]
  end
end
