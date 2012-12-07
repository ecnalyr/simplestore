FactoryGirl.define do
  factory :product do
    name "FirstProduct"
    price 3.50
  end

  factory :user do
    sequence(:email) { |n| "emailman#{n}@emailman.com" }
    password "pas5word"
  end
end