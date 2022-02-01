# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@example.com" }
    password { "secret123" }
    activated_at { Time.zone.today }
  end
end
