# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    price 1
    description "MyText"
    user nil
  end
end
