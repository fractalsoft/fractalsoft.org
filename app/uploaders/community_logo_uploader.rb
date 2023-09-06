class CommunityLogoUploader < ImageUploader
  process resize_to_fit: [256, 256]
  process convert: 'png'

  protected

  def minimum_size(image, params)
    height = params.first
    ratio = height / (image[:height] * 1.0)
    return [image[:width], image[:height]] if height > image[:height]

    [image[:width] * ratio, height]
  end

  def resize_to_minimum_fill(*params)
    manipulate! do |image|
      size = minimum_size(image, params)
      image.combine_options do |command|
        command.resize size.first
      end
      image = yield(image) if block_given?
      image
    end
  end

  def resize(width, height, gravity = 'Center')
    manipulate! do |img|
      img.combine_options do |cmd|
        cmd.resize width.to_s
        if img[:width] < img[:height]
          cmd.gravity gravity
          cmd.background 'rgba(255,255,255,0.0)'
          cmd.extent "#{width}x#{height}"
        end
      end
      img = yield(img) if block_given?
      img
    end
  end
end
