# frozen_string_literal: true

FactoryBot.define do
  factory :complaint do
    subject { "Árbol caído" }
    description { "Se cayó un árbol sobre la calle, estaba sobre el camellón y con la tormenta de anoche se cayó" }
    address { "Paseo de las primaveras" }
    street { "28978" }
    neighbourhood { "Colinas del Volcán" }
    town { "El Chivato" }
    latitude { 1.5 }
    longitude { 1.5 }
    user { User.first }
    category { Category.last }
  end
end
