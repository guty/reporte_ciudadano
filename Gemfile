# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"
gem "pg", "~> 1.3"
gem "puma", "~> 5.6"
gem "rails", "~> 7.0.1"

gem "aasm"
gem "bootsnap", require: false
gem "cloudinary"
gem "devise"
gem "image_processing", "~> 1.2"
gem "pundit"
gem "redis", "~> 4.6"
gem "sendgrid-ruby"
# gem "kredis"

gem "cssbundling-rails"
gem "jbuilder"
gem "jsbundling-rails"
gem "rails-i18n"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"

group :development, :test do
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails"
  gem "rubocop", require: false
  gem "rubocop-minitest", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
end

group :development do
  gem "rack-mini-profiler"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
