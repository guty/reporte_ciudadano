# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    name { 'Fuga de agua' }
    dependency { association :dependency }
    active { true }
  end
end
