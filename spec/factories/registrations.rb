# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :registration do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    spot_number 1
    parked_on "2013-09-18"
  end
end
