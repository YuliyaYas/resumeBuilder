# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


template1 = Template.create(name: "black&white")
template2 = Template.create(name: "color")

resume1 = Resume.create(name: "My Resume", first_name: "Cory", last_name: "Baker", location: "Brooklyn, NY", phone: "501-555-4586", email: "coryb08@yahoo.com", website: "www.corydbaker.com", skills: "Ruby on Rails, JavaScript, React, HTML, CSS", summary: "Built internal and external pages and applications using JS, PHP, CSS, HTML and API for various platforms", template_id: 1)
resume2 = Resume.create(name: "My  other Resume", first_name: "Baker", last_name: "Baker", location: "New York, NY", phone: "501-555-4586", email: "coryb08@yahoo.com", website: "www.corydbaker.com", skills: "Ruby on Rails, JavaScript, React, HTML, CSS", summary: "Full Stack Web Development", template_id: 2)


job1 = Job.create(title: "Web Developer", employer: "Alpha Flight Guru", location: "New York", start_date: "2013-12-13", end_date: "2017-12-13", description: "Worked on the website using JS(jQuery)/CSS/HTML, PHP (Kohana), MySQL, Facebook Graph API (JavaScript and PHP), scraped other websites using PHP, integrated WordPress into Kohana framework", resume_id: 1)
job1 = Job.create(title: "Web Developer", employer: "Alpha Flight Guru", location: "New York", start_date: "2013-12-13", end_date: "2017-12-13", description: "Worked on the website using JS(jQuery)/CSS/HTML, PHP (Kohana), MySQL, Facebook Graph API (JavaScript and PHP), scraped other websites using PHP, integrated WordPress into Kohana framework", resume_id: 2)
job2 = Job.create(title: "Intern", employer: "Beta Flight Guru", location: "New York", start_date: "2015-12-13", end_date: "2017-12-13", description: "Optimized and added features to existing website using Java, RTML, PHP, JS, CSS and HTML. Created a script that scraped product information about 10,000 SKUs from Google search results", resume_id: 1)
job2 = Job.create(title: "Intern", employer: "Beta Flight Guru", location: "New York", start_date: "2015-12-13", end_date: "2017-12-13", description: "Optimized and added features to existing website using Java, RTML, PHP, JS, CSS and HTML. Created a script that scraped product information about 10,000 SKUs from Google search results", resume_id: 2)


education1 = Education.create(school: "CUNY", location: "New York", degree: "Bachelors", major: "Engineering", graduation_year: "2017", resume_id: 1)
education1 = Education.create(school: "CUNY", location: "New York", degree: "Bachelors", major: "Engineering", graduation_year: "2017", resume_id: 2)
education2 = Education.create(school: "NYU", location: "New York", degree: "Bachelors", major: "Engineering", graduation_year: "2017", resume_id: 1)
education2 = Education.create(school: "NYU", location: "New York", degree: "Bachelors", major: "Engineering", graduation_year: "2017", resume_id: 2)
