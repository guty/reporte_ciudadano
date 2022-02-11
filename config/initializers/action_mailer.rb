# frozen_string_literal: true

ActionMailer::Base.smtp_settings = {
  user_name: "apikey",
  password: Rails.application.credentials.dig(:sendgrid, :api_key),
  domain: Rails.application.credentials.dig(:sendgrid, :domain),
  address: Rails.application.credentials.dig(:sendgrid, :address),
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
