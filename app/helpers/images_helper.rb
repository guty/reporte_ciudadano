# frozen_string_literal: true

module ImagesHelper
  def display_image(image, image_params)
    return image_tag(image.key, image_params) if Rails.env.production?

    imagemagick_size_params_for(image_params)
    image_tag(image.variant(resize_to_fill: [@width, @height]), class: image_params[:class] || '')
  end

  private

  def imagemagick_size_params_for(image_params)
    if image_params[:height]
      @width = image_params[:width]
      @height = image_params[:height]
    else
      @width = image_params[:size][0]
      @height = image_params[:size][1]
    end
  end
end
