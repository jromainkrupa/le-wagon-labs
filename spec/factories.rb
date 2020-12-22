FactoryBot.define do
  factory :alumni do
    first_name { 'toto' }
    last_name  { 'jojo' }
    email      { 'test@email.com'}
    password   { '123456'}
  end

  factory :article do
    title   { 'Ceci est un titre valide' }
    content { 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Asperiores ipsum ea aliquid nisi odio. Voluptatem atque voluptates, assumenda dolorem error temporibus perferendis. Ipsa, quidem alias laboriosam temporibus consequuntur impedit eos.' }
  end

  factory :candicacie do
    # alumni  { create(:alumni) }
    # project { create(:project) }
  end

  factory :entrepreneur do
    first_name { 'Jean' }
    last_name  { 'Boche'}
    phone      { '0601020304' }
  end

  factory :language do
    name { 'Ruby' }
  end

  factory :language_alumni do
    # language { create(:language) }
    # alumni   { create(:alumni) }
  end

  factory :project do
    name      { 'Le Wagon Labs' }
    pain      { 'Les alumnis qui sortent du wagon ont du mal à trouver une première expérience'}
    target    { 'Les alumnis qui sortent du wagon' }
    solution  { 'Le wagon labs une app web ou des entrepreneurs propose des projets' }
  end

  factory :ticket do
    description { 'Problème avec la création des factory ! besoin daide @Jeanro' }
    # alumni    { create(:alumni) }
    # project   { create(:project) }
  end
end
