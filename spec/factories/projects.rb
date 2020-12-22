FactoryBot.define do
  factory :project do
    name { "MyString" }
    description { "MyText" }
    status { "MyString" }
    duration { "MyString" }
    compensation { "MyString" }
    progression { 1 }
    is_validated { false }
    entrepreneur { nil }
  end
end
