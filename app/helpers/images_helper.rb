# frozen_string_literal: true

module ImagesHelper
  def display_image(image, image_params)
    return image_tag(image.key, image_params) if Rails.env.production?

    if image_params[:height]
      width = image_params[:width]
      height = image_params[:height]
    else
      width = image_params[:size][0]
      height = image_params[:size][1]
    end
    image_tag(image.variant(resize_to_fill: [width, height]), class: image_params[:class] || "")
  end
end
