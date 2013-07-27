# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sermon do
    title "MyString"
    body "MyText"
    date "2013-07-26"
    summary "MyText"
  end
end
