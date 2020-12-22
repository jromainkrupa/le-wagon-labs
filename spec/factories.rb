FactoryBot.define do
  factory :alumni do
    first_name { 'toto' }
    last_name  { 'jojo'}
    email { 'test@email.com'}
    password { '123456'}
  end
end
