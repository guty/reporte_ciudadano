# frozen_string_literal: true

FactoryBot.define do
  factory :complaint do
    subject { "Lámpara fundida" }
    description { "Tiene 5 días sin funcionar esta lámpara, se quemó con la última lluvia" }
    address { "Paseo de las lomas #56" }
    neighbourhood { "Real Lomas" }
    town { "Colima" }
    latitude { 19.26662462537348 }
    longitude { -103.71750400365903 }
    user { association :user }
    category { association :category }
  end
end
