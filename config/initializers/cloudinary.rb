# frozen_string_literal: true

Cloudinary.config do |config|
  config.cloud_name = Rails.application.credentials.dig(:cloudinary, :cloud_name)
  config.api_key = Rails.application.credentials.dig(:cloudinary, :api_key)
  config.secret_access_key = Rails.application.credentials.dig(:cloudinary, :api_secret)
  config.secure = true
  config.cdn_subdomain = true
  config.enhance_image_tag = true
  config.static_file_support = true
end
