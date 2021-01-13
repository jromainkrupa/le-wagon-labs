puts "Cleaning Database..."

Candidacy.destroy_all
LanguageRole.destroy_all
Role.destroy_all
Alumni.destroy_all
Project.destroy_all
Entrepreneur.destroy_all
Language.destroy_all
LanguageAlumni.destroy_all

puts "Creating languages..."

ruby = Language.create!(name: "Ruby", category: "back", svg: '<svg fill="none" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><g clip-path="url(#clip0)" fill-rule="evenodd" clip-rule="evenodd"><path d="M18.594 15.84L4.89 24l17.743-1.207L24 4.853 18.594 15.84z" fill="url(#paint0_linear)"/><path d="M22.663 22.78l-1.525-10.554-4.155 5.5 5.68 5.055z" fill="url(#paint1_linear)"/><path d="M22.683 22.78l-11.172-.879-6.56 2.077 17.732-1.198z" fill="url(#paint2_linear)"/><path d="M4.966 23.98l2.791-9.17-6.141 1.318 3.35 7.851z" fill="url(#paint3_linear)"/><path d="M16.983 17.756L14.415 7.67l-7.35 6.908 9.918 3.178z" fill="url(#paint4_linear)"/><path d="M23.417 7.812l-6.947-5.69-1.934 6.272 8.881-.582z" fill="url(#paint5_linear)"/><path d="M20.169.093l-4.086 2.265L13.505.063l6.664.03z" fill="url(#paint6_linear)"/><path d="M0 19.203l1.712-3.13-1.385-3.73L0 19.204z" fill="url(#paint7_linear)"/><path d="M.235 12.226l1.393 3.962 6.053-1.361 6.91-6.44 1.951-6.213L13.472 0 8.248 1.96C6.605 3.492 3.414 6.528 3.3 6.585c-.114.058-2.108 3.837-3.064 5.64z" fill="#fff"/><path d="M5.126 5.108c3.565-3.545 8.161-5.639 9.925-3.854 1.762 1.784-.107 6.12-3.672 9.664-3.565 3.543-8.104 5.753-9.866 3.968-1.764-1.783.048-6.235 3.613-9.778z" fill="url(#paint8_linear)"/><path d="M4.966 23.976l2.77-9.198 9.196 2.963c-3.325 3.126-7.023 5.77-11.966 6.235z" fill="url(#paint9_linear)"/><path d="M14.604 8.368l2.36 9.377c2.778-2.928 5.271-6.077 6.492-9.971l-8.852.594z" fill="url(#paint10_linear)"/><path d="M23.432 7.821C24.377 4.962 24.595.86 20.14.098l-3.656 2.025 6.948 5.698z" fill="url(#paint11_linear)"/><path d="M0 19.162c.13 4.719 3.526 4.79 4.972 4.83l-3.34-7.823L0 19.162z" fill="#9E1209"/><path d="M14.617 8.383c2.172 1.339 4.346 2.674 6.523 4.006.136.076 1.855-2.907 2.245-4.593l-8.768.587z" fill="url(#paint12_radial)"/><path d="M7.732 14.778l3.702 7.162c2.189-1.19 3.903-2.64 5.473-4.195l-9.175-2.967z" fill="url(#paint13_radial)"/><path d="M1.617 16.179l-.524 6.263c.99 1.355 2.35 1.473 3.779 1.367-1.033-2.579-3.097-7.735-3.255-7.63z" fill="url(#paint14_linear)"/><path d="M16.462 2.14l7.354 1.034C23.423 1.506 22.218.43 20.164.094l-3.702 2.045z" fill="url(#paint15_linear)"/></g><defs><linearGradient id="paint0_linear" x1="21.086" y1="26.183" x2="16.002" y2="17.23" gradientUnits="userSpaceOnUse"><stop stop-color="#FB7655"/><stop offset=".41" stop-color="#E42B1E"/><stop offset=".99" stop-color="#900"/><stop offset="1" stop-color="#900"/></linearGradient><linearGradient id="paint1_linear" x1="23.609" y1="18.653" x2="17.072" y2="14.279" gradientUnits="userSpaceOnUse"><stop stop-color="#871101"/><stop offset=".99" stop-color="#911209"/><stop offset="1" stop-color="#911209"/></linearGradient><linearGradient id="paint2_linear" x1="18.388" y1="26.455" x2="11.851" y2="22.081" gradientUnits="userSpaceOnUse"><stop stop-color="#871101"/><stop offset=".99" stop-color="#911209"/><stop offset="1" stop-color="#911209"/></linearGradient><linearGradient id="paint3_linear" x1="4.688" y1="15.474" x2="5.705" y2="22.065" gradientUnits="userSpaceOnUse"><stop stop-color="#fff"/><stop offset=".23" stop-color="#E57252"/><stop offset=".46" stop-color="#DE3B20"/><stop offset=".99" stop-color="#A60003"/><stop offset="1" stop-color="#A60003"/></linearGradient><linearGradient id="paint4_linear" x1="11.645" y1="9.319" x2="12.02" y2="16.046" gradientUnits="userSpaceOnUse"><stop stop-color="#fff"/><stop offset=".23" stop-color="#E4714E"/><stop offset=".56" stop-color="#BE1A0D"/><stop offset=".99" stop-color="#A80D00"/><stop offset="1" stop-color="#A80D00"/></linearGradient><linearGradient id="paint5_linear" x1="17.819" y1="3.1" x2="18.94" y2="7.921" gradientUnits="userSpaceOnUse"><stop stop-color="#fff"/><stop offset=".18" stop-color="#E46342"/><stop offset=".4" stop-color="#C82410"/><stop offset=".99" stop-color="#A80D00"/><stop offset="1" stop-color="#A80D00"/></linearGradient><linearGradient id="paint6_linear" x1="14.412" y1="1.402" x2="19.226" y2="-.998" gradientUnits="userSpaceOnUse"><stop stop-color="#fff"/><stop offset=".54" stop-color="#C81F11"/><stop offset=".99" stop-color="#BF0905"/><stop offset="1" stop-color="#BF0905"/></linearGradient><linearGradient id="paint7_linear" x1=".472" y1="13.793" x2=".871" y2="17.766" gradientUnits="userSpaceOnUse"><stop stop-color="#fff"/><stop offset=".31" stop-color="#DE4024"/><stop offset=".99" stop-color="#BF190B"/><stop offset="1" stop-color="#BF190B"/></linearGradient><linearGradient id="paint8_linear" x1="-2.248" y1="18.84" x2="16.409" y2="-.29" gradientUnits="userSpaceOnUse"><stop stop-color="#BD0012"/><stop offset=".07" stop-color="#fff"/><stop offset=".17" stop-color="#fff"/><stop offset=".27" stop-color="#C82F1C"/><stop offset=".33" stop-color="#820C01"/><stop offset=".46" stop-color="#A31601"/><stop offset=".72" stop-color="#B31301"/><stop offset=".99" stop-color="#E82609"/><stop offset="1" stop-color="#E82609"/></linearGradient><linearGradient id="paint9_linear" x1="12.001" y1="20.775" x2="6.396" y2="19.396" gradientUnits="userSpaceOnUse"><stop stop-color="#8C0C01"/><stop offset=".54" stop-color="#990C00"/><stop offset=".99" stop-color="#A80D0E"/><stop offset="1" stop-color="#A80D0E"/></linearGradient><linearGradient id="paint10_linear" x1="21.626" y1="14.031" x2="16.635" y2="9.571" gradientUnits="userSpaceOnUse"><stop stop-color="#7E110B"/><stop offset=".99" stop-color="#9E0C00"/><stop offset="1" stop-color="#9E0C00"/></linearGradient><linearGradient id="paint11_linear" x1="23.454" y1="5.823" x2="20.967" y2="3.171" gradientUnits="userSpaceOnUse"><stop stop-color="#79130D"/><stop offset=".99" stop-color="#9E120B"/><stop offset="1" stop-color="#9E120B"/></linearGradient><linearGradient id="paint14_linear" x1="3.231" y1="23.971" x2="1.2" y2="17.099" gradientUnits="userSpaceOnUse"><stop stop-color="#8B2114"/><stop offset=".43" stop-color="#9E100A"/><stop offset=".99" stop-color="#B3100C"/><stop offset="1" stop-color="#B3100C"/></linearGradient><linearGradient id="paint15_linear" x1="18.732" y1="1.19" x2="23.266" y2="3.187" gradientUnits="userSpaceOnUse"><stop stop-color="#B31000"/><stop offset=".44" stop-color="#910F08"/><stop offset=".99" stop-color="#791C12"/><stop offset="1" stop-color="#791C12"/></linearGradient><radialGradient id="paint12_radial" cx="0" cy="0" r="1" gradientUnits="userSpaceOnUse" gradientTransform="matrix(6.10024 0 0 6.11722 17.422 9.643)"><stop stop-color="#A80D00"/><stop offset=".99" stop-color="#7E0E08"/><stop offset="1" stop-color="#7E0E08"/></radialGradient><radialGradient id="paint13_radial" cx="0" cy="0" r="1" gradientUnits="userSpaceOnUse" gradientTransform="matrix(8.10861 0 0 8.13119 8.975 17.704)"><stop stop-color="#A30C00"/><stop offset=".99" stop-color="#800E08"/><stop offset="1" stop-color="#800E08"/></radialGradient><clipPath id="clip0"><path fill="#fff" d="M0 0h24v24H0z"/></clipPath></defs></svg>')

js = Language.create!(name: "JavaScript", category: "back", svg: '<svg fill="none" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="#000" d="M0 0h24v24H0z"/><path d="M0 0h24v24H0V0zm22.034 18.276c-.175-1.095-.888-2.015-3.003-2.873-.736-.345-1.554-.585-1.797-1.14-.091-.33-.105-.51-.046-.705.15-.646.915-.84 1.515-.66.39.12.75.42.976.9 1.034-.676 1.034-.676 1.755-1.125-.27-.42-.404-.601-.586-.78-.63-.705-1.469-1.065-2.834-1.034l-.705.089c-.676.165-1.32.525-1.71 1.005-1.14 1.291-.811 3.541.569 4.471 1.365 1.02 3.361 1.244 3.616 2.205.24 1.17-.87 1.545-1.966 1.41-.811-.18-1.26-.586-1.755-1.336l-1.83 1.051c.21.48.45.689.81 1.109 1.74 1.756 6.09 1.666 6.871-1.004.029-.09.24-.705.074-1.65l.046.067zm-8.983-7.245h-2.248c0 1.938-.009 3.864-.009 5.805 0 1.232.063 2.363-.138 2.711-.33.689-1.18.601-1.566.48-.396-.196-.597-.466-.83-.855-.063-.105-.11-.196-.127-.196l-1.825 1.125c.305.63.75 1.172 1.324 1.517.855.51 2.004.675 3.207.405.783-.226 1.458-.691 1.811-1.411.51-.93.402-2.07.397-3.346.012-2.054 0-4.109 0-6.179l.004-.056z" fill="#F7E018"/></svg>')

js2 = Language.create!(name: "JavaScript", category: "front", svg: '<svg fill="none" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="#000" d="M0 0h24v24H0z"/><path d="M0 0h24v24H0V0zm22.034 18.276c-.175-1.095-.888-2.015-3.003-2.873-.736-.345-1.554-.585-1.797-1.14-.091-.33-.105-.51-.046-.705.15-.646.915-.84 1.515-.66.39.12.75.42.976.9 1.034-.676 1.034-.676 1.755-1.125-.27-.42-.404-.601-.586-.78-.63-.705-1.469-1.065-2.834-1.034l-.705.089c-.676.165-1.32.525-1.71 1.005-1.14 1.291-.811 3.541.569 4.471 1.365 1.02 3.361 1.244 3.616 2.205.24 1.17-.87 1.545-1.966 1.41-.811-.18-1.26-.586-1.755-1.336l-1.83 1.051c.21.48.45.689.81 1.109 1.74 1.756 6.09 1.666 6.871-1.004.029-.09.24-.705.074-1.65l.046.067zm-8.983-7.245h-2.248c0 1.938-.009 3.864-.009 5.805 0 1.232.063 2.363-.138 2.711-.33.689-1.18.601-1.566.48-.396-.196-.597-.466-.83-.855-.063-.105-.11-.196-.127-.196l-1.825 1.125c.305.63.75 1.172 1.324 1.517.855.51 2.004.675 3.207.405.783-.226 1.458-.691 1.811-1.411.51-.93.402-2.07.397-3.346.012-2.054 0-4.109 0-6.179l.004-.056z" fill="#F7E018"/></svg>' )

figma = Language.create!(name: "Figma", category: "ui_ux", svg: '<svg fill="none" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M7.5 24c2.484 0 4.5-1.792 4.5-4v-4H7.5C5.016 16 3 17.792 3 20s2.016 4 4.5 4z" fill="#0ACF83"/><path d="M3 12c0-2.208 2.016-4 4.5-4H12v8H7.5C5.016 16 3 14.208 3 12z" fill="#A259FE"/><path d="M3 4c0-2.208 2.016-4 4.5-4H12v8H7.5C5.016 8 3 6.208 3 4z" fill="#F24E1E"/><path d="M12 0h4.5C18.984 0 21 1.792 21 4s-2.016 4-4.5 4H12V0z" fill="#FF7262"/><path d="M21 12c0 2.208-2.016 4-4.5 4S12 14.208 12 12s2.016-4 4.5-4S21 9.792 21 12z" fill="#1ABCFE"/></svg>')

puts "Creating Alumnis..."

alumni_gagou = Alumni.create(
  first_name: 'Gag',
  last_name: 'Ou',
  email: 'gag@ou.co',
  password: 'gagaga',
  is_mentor: true,
  city: "Paris",
  about: "Gagou is a very happy alumni with a positive attitude all the time. Strong in both Back and Front end."
)

alumni_mentor = Alumni.create(
  first_name: 'jojo',
  last_name: 'toto',
  email: "test@test.com",
  password: '123456',
  is_mentor: true,
  city: "Lyon",
  about: "Short description of the alumni Short description of the alumni Short description of the alumni Short description of the alumni Short description of the alumni Short description of the alumni Short description of the alumni Short description of the alumni Short description of the alumni ."
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
  company_name: 'Anphibia',
  about: "Anphibia is a very dynamic company with tied relationships with companies like Decathlon and is now looking to better their app"
)

puts "Creating Projects..."

project = Project.create!(
  name: 'Le Wagon Labs',
  pain: 'Les alumnis qui sortent du wagon ont du mal à trouver une première expérience',
  target: 'Les alumnis qui sortent du wagon et qui sont trop beaux',
  solution: 'Le wagon labs une app web ou des entrepreneurs propose des projets',
  description: 'Le wagon labs est une app web pour mettre en relation des entrepreneurs et des développeurs du Wagon',
  duration: 5,
  compensation_in_cents:  25_000,
  entrepreneur_id: xavier.id
)

project2 = Project.create!(
  name: 'Le Wagon Labs 2',
  pain: 'Les alumnis qui sortent du wagon ont du mal à trouver une première expérience',
  target: 'Les alumnis qui sortent du wagon et qui sont trop beaux',
  solution: 'Le wagon labs une app web ou des entrepreneurs propose des projets',
  description: 'Le wagon labs 2 est une app web pour mettre en relation des entrepreneurs et des développeurs du Wagon',
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
  status: 'pending',
  number: 1,
  project_id: project.id
)

role_front = Role.create!(
  name: 'front-end',
  status: 'pending',
  number: 1,
  project_id: project.id
)

role_ui_ux = Role.create!(
  name: 'UX/UI',
  status: 'pending',
  number: 1,
  project_id: project.id
)


puts "Creating Candidacy..."

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

puts "Creating Language_Roles..."

language_roles1 = LanguageRole.create!(
  language_id: ruby.id,
  role_id: role_back.id
)

language_roles2 = LanguageRole.create!(
  language_id: js.id,
  role_id: role_back.id
)

language_roles3 = LanguageRole.create!(
  language_id: js2.id,
  role_id: role_front.id
)

language_roles4 = LanguageRole.create!(
  language_id: figma.id,
  role_id: role_ui_ux.id
)

puts "Creating Articles..."

Article.create!(
  alumni_id: alumni_one.id,
  title: "Ceci est un titre",
  content: "Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content"
)

Article.create!(
  alumni_id: alumni_mentor.id,
  title: "Ceci est un titre",
  content: "Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content"
)

Article.create!(
  alumni_id: alumni_mentor.id,
  title: "Ceci est un titre",
  content: "Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content"
)

Article.create!(
  alumni_id: alumni_mentor.id,
  title: "Ceci est un titre",
  content: "Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content Ceci est un content"
)

