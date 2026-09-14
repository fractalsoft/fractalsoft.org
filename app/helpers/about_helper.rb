# frozen_string_literal: true

module AboutHelper
  def about_photo_tag(name, alt:, height_class:, width:, height:)
    image_tag("about/#{name}.webp", about_photo_options(alt, height_class, width, height))
  end

  private

  def about_photo_options(alt, height_class, width, height)
    { alt:, class: "w-full #{height_class} object-cover", width:, height:, loading: 'lazy', decoding: 'async' }
  end
end
