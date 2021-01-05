FactoryBot.define do
  # on a besoin de cree plus de factory et de test pour les models
  factory :task do
    name      { 'MyString' }
    completed { false }
    project   { build(:project) }

    factory :task_name_empty do
      name      {}
      completed { false }
      project   { build(:project) }
    end
  end

  factory :role do
    name    { 'MyString' }
    number  { 1 }
    status  { 'MyString' }
    project { build(:project) }

    factory :role_name_empty do
      name    {}
      number  { 1 }
      status  { 'MyString' }
      project { build(:project) }
    end
  end

  factory :candidacy do
    status { 'MyString' }
    role   { build(:role) }
    alumni { build(:alumni) }
  end

  factory :alumni do
    first_name { 'toto' }
    last_name  { 'jojo' }
    email      { 'test@email.com' }
    password   { '123456' }

    factory :alumni_empty do
      first_name {}
      last_name  {}
      email      { 'test2@email.com' }
      password   { '123456' }
    end
  end

  factory :article do
    title   { 'Ceci est un titre valide' }
    content { 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Asperiores ipsum ea aliquid nisi odio. Voluptatem atque voluptates, assumenda dolorem error temporibus perferendis. Ipsa, quidem alias laboriosam temporibus consequuntur impedit eos.' }
    alumni  { build(:alumni) }

    factory :article_title_2 do
      title   { 'de' }
      content { 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Asperiores ipsum ea aliquid nisi odio. Voluptatem atque voluptates, assumenda dolorem error temporibus perferendis. Ipsa, quidem alias laboriosam temporibus consequuntur impedit eos.' }
      alumni  { build(:alumni) }
    end

    factory :article_content_less_100 do
      title   { 'Ceci est un titre valide' }
      content { 'Contenu de moins de 100 caractères' }
      alumni  { build(:alumni) }
    end
  end

  factory :entrepreneur do
    first_name { 'Jean' }
    last_name  { 'Boche' }
    phone      { '0601020304' }
    email      { 'test_ent@email.com' }
    password   { '123456'}

    factory :entrepreneur_empty do
      first_name { '' }
      last_name  { '' }
      phone      { '' }
      email      { 'test_ent2@email.com'}
      password   { '123456'}
    end

    factory :entrepreneur_first_name_empty do
      first_name { '' }
      last_name  { 'Boche'}
      phone      { '0601020304' }
      email      { 'test_ent2@email.com'}
      password   { '123456'}
    end

    factory :entrepreneur_last_name_empty do
      first_name { 'Jean' }
      last_name  { '' }
      phone      { '0601020304' }
      email      { 'test_ent2@email.com'}
      password   { '123456'}
    end

    factory :entrepreneur_phone_empty do
      first_name { 'Jean' }
      last_name  { 'Boche' }
      phone      { '06235468' }
      email      { 'test_ent2@email.com'}
      password   { '123456'}
    end
  end

  factory :language do
    name { 'Ruby' }

    factory :language_empty do
      name {}
    end
  end

  factory :language_alumni do
    language { build(:language) }
    alumni   { build(:alumni) }
  end

  factory :project do
    name         { 'Le Wagon Labs' }
    pain         { 'Les alumnis qui sortent du wagon ont du mal à trouver une première expérience' }
    target       { 'Les alumnis qui sortent du wagon et qui sont trop beaux' }
    solution     { 'Le wagon labs une app web ou des entrepreneurs propose des projets' }
    entrepreneur { build(:entrepreneur) }

    factory :project_empty do
      name         {}
      pain         {}
      target       {}
      solution     {}
      entrepreneur { build(:entrepreneur) }
    end
  end
end
