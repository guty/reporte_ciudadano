FactoryBot.define do
  factory :complaint do
    subject { 'Lámpara fundida' }
    description { 'Tiene 5 días sin funcionar esta lámpara, se quemó con la última lluvia' }
    address { 'Paseo de las lomas #56' }
    neighbourhood { 'Real Lomas' }
    town { 'Colima' }
    latitude {}
    longitude {}
    user { association :user }
    category { association :category }
  end
end
