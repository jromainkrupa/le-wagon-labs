puts "Cleaning Database..."

Candidacy.destroy_all
Role.destroy_all
Alumni.destroy_all
Project.destroy_all
Entrepreneur.destroy_all
Language.destroy_all
LanguageAlumni.destroy_all

puts "Creating languages..."

ruby = Language.create!(name: "Ruby")

js = Language.create!(name: "JavaScript")

puts "Creating Alumnis..."

alumni_gagou = Alumni.create(
  first_name: 'Gag',
  last_name: 'Ou',
  email: 'gag@ou.co',
  password: 'gagaga',
  is_mentor: true,
  city: "Paris"
)

alumni_mentor = Alumni.create(
  first_name: 'jojo',
  last_name: 'toto',
  email: "test@test.com",
  password: '123456',
  is_mentor: true,
  city: "Lyon"
)

alumni_one = Alumni.create(
  first_name: 'yann',
  last_name: 'titi',
  email: "test1@test.com",
  password: '123456',
  is_mentor: false,
  city: "Lyon"
)

alumni_two = Alumni.create(
  first_name: 'tata',
  last_name: 'tutu',
  email: "test2@test.com",
  password: '123456',
  is_mentor: false,
  city: "Lyon"
)

puts "Creating language alumnis"

language1 = LanguageAlumni.create!(
  alumni_id: alumni_one.id,
  language_id: ruby.id
)

language2 = LanguageAlumni.create!(
  alumni_id: alumni_two.id,
  language_id: ruby.id
)

language3 = LanguageAlumni.create!(
  alumni_id: alumni_mentor.id,
  language_id: ruby.id
)

language4 = LanguageAlumni.create!(
  alumni_id: alumni_gagou.id,
  language_id: ruby.id
)

language5 = LanguageAlumni.create!(
  alumni_id: alumni_mentor.id,
  language_id: js.id
)

language6 = LanguageAlumni.create!(
  alumni_id: alumni_gagou.id,
  language_id: js.id
)

puts "Creating Entrepreneurs..."

xavier = Entrepreneur.create(
  first_name: 'xavier',
  last_name: 'pousin',
  email: "xav@test.com",
  password: '123456',
  phone: '0601020304',
  company_name: 'Anphibia'
)

puts "Creating Projects..."

project = Project.create!(
  name: 'Le Wagon Labs',
  pain: 'Les alumnis qui sortent du wagon ont du mal à trouver une première expérience',
  target: 'Les alumnis qui sortent du wagon et qui sont trop beaux',
  solution: 'Le wagon labs une app web ou des entrepreneurs propose des projets',
  entrepreneur_id: xavier.id
)

project2 = Project.create!(
  name: 'Le Wagon Labs 2',
  pain: 'Les alumnis qui sortent du wagon ont du mal à trouver une première expérience',
  target: 'Les alumnis qui sortent du wagon et qui sont trop beaux',
  solution: 'Le wagon labs une app web ou des entrepreneurs propose des projets',
  entrepreneur_id: xavier.id
)

puts "Creating Roles..."

role_mentor = Role.create!(
  name: 'mentor',
  status: 'done',
  number: 1,
  project_id: project.id
)

role_mentor2 = Role.create!(
  name: 'mentor',
  status: 'done',
  number: 1,
  project_id: project2.id
)

role_back = Role.create!(
  name: 'back-end',
  status: 'done',
  number: 1,
  project_id: project.id
)

Candidacy.create!(
  alumni_id: alumni_mentor.id,
  role_id: role_mentor.id,
  status: 'accepted'
)

Candidacy.create!(
  alumni_id: alumni_mentor.id,
  role_id: role_mentor2.id,
  status: 'accepted'
)

Candidacy.create!(
  alumni_id: alumni_one.id,
  role_id: role_back.id,
  status: 'accepted'
)

puts "Creating Articles..."

Article.create!(
  alumni_id: alumni_one.id,
  title: "Ceci est un titre",
  content: "Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content"
)

