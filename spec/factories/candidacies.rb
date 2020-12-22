FactoryBot.define do
  factory :candidacie do
    status { "MyString" }
    is_validated { false }
    alumni { nil }
    project { nil }
  end
end
