# frozen_string_literal: true

# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  user_name: "apikey",
  password: Rails.application.credentials.dig(:sendgrid, :api_key),
  domain: Rails.application.credentials.dig(:sendgrid, :domain),
  address: Rails.application.credentials.dig(:sendgrid, :address),
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
