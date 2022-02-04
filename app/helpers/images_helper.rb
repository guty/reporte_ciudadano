# frozen_string_literal: true

module ImagesHelper
  def display_image(image, image_params)
    return image_tag(image.key, image_params) if Rails.env.production?

    image_tag(image.variant(resize_to_fill: [image_params[:width], image_params[:height]]), class: image_params[:class])
  end
end
