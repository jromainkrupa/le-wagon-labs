Alumni.destroy_all
Project.destroy_all
Entrepreneur.destroy_all
Candidacy.destroy_all

alumni_mentor = Alumni.create(
  first_name: 'jojo',
  last_name: 'toto',
  email: "test@test.com",
  password: '123456',
  is_mentor: true
)

alumni_one = Alumni.create(
  first_name: 'yann',
  last_name: 'titi',
  email: "test1@test.com",
  password: '123456',
  is_mentor: false
)

alumni_two = Alumni.create(
  first_name: 'tata',
  last_name: 'tutu',
  email: "test2@test.com",
  password: '123456',
  is_mentor: false
)

xavier = Entrepreneur.create(
  first_name: 'xavier',
  last_name: 'pousin',
  email: "xav@test.com",
  password: '123456',
  phone: '0601020304',
  company_name: 'Anphibia'
)

project = Project.create!(
  name: 'Le Wagon Labs',
  pain: 'Les alumnis qui sortent du wagon ont du mal à trouver une première expérience',
  target: 'Les alumnis qui sortent du wagon',
  solution: 'Le wagon labs une app web ou des entrepreneurs propose des projets',
  alumni: alumni_mentor,
  entrepreneur_id: xavier.id
)

Candidacy.create!(
  alumni_id: alumni_one.id,
  project_id: project.id
)

Candidacy.create!(
  alumni_id: alumni_two.id,
  project_id: project.id
)
