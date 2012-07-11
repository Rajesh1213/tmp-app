# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    name "MyString"
    user_id 1
    comment "MyText"
  end
end
