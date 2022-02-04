# frozen_string_literal: true

module ImagesHelper
  def display_image(image, image_params)
    if Rails.env.development?
      image_tag(image.variant(resize_to_fill: [image_params[:width], image_params[:height]]),
                class: image_params[:class])
    elsif Rails.env.production?
      if image_params[:avatar]
        image_tag(image, type: :upload, width: image_params[:width], height: image_params[:height], gravity: 'faces',
                         crop: :thumb, class: image_params[:class])
      else
        image_tag(image.key, type: :upload, width: image_params[:width], height: image_params[:height], crop: :fill,
                             class: image_params[:class])
      end
    end
  end
end
