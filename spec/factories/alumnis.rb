FactoryBot.define do
  factory :alumni do
    first_name { 'toto' }
    last_name  { 'joseph' }
    email      { 'toto@joseph.com' }
    password   { '123456' }

    factory :alumni_empty do
      first_name {}
      last_name  {}
      email      { 'toto@joseph.com' }
      password   { '123456' }
    end
  end
end
