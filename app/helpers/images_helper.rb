# frozen_string_literal: true

module ImagesHelper
  def display_image(image, image_params)
    image = image_for(image, image_params)
    params = image_params_for(image_params)

    image_tag(image, params)
  end

  private

  def image_params_for(image_params)
    params = { class: image_params[:class] } || {}

    return params if Rails.env.development?

    params.merge!({ width: image_params[:width], type: image_params[:type], crop: image_params[:crop],
                    quality: image_params[:quality], gravity: image_params[:gravity] })
    params[:height] = image_params[:height] if image_params[:height]

    params
  end

  def image_for(image, image_params)
    return image.key if Rails.env.production?

    size = image_size(image_params)
    image.variant(resize_to_fill: [size[:width], size[:height]])
  end

  def image_size(image_params)
    return { width: image_params[:size][0], height: image_params[:size][1] } if image_params[:size]

    { width: image_params[:width], height: image_params[:height] }
  end
end
