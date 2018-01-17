# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


template1 = Template.create(name: "black&white")
template2 = Template.create(name: "color")

resume1 = Resume.create(name: "My Resume", first_name: "Cory", last_name: "Baker", location: "New York, NY", phone: "501-555-4586", email: "coryb08@yahoo.com", website: "www.corydbaker.com", skills: "absolutely no skills", summary: "summary goes here", template_id: 1)

resume2 = Resume.create(name: "My  other Resume", first_name: "Doug", last_name: "Baker", location: "New York, NY", phone: "501-555-4586", email: "coryb08@yahoo.com", website: "www.corydbaker.com", skills: "absolutely no skills", summary: "summary goes here", template_id: 2)


job1 = Job.create(title: "account execute", employer: "Alpha Flight Guru", location: "New York", start_date: "2013-12-13", end_date: "2017-12-13", description: "making calls", resume_id: 1)

job2 = Job.create(title: "manager", employer: "Beta Flight Guru", location: "New York", start_date: "2015-12-13", end_date: "2017-12-13", description: "making calls", resume_id: 1)


education1 = Education.create(school: "CUNY", location: "New York", degree: "BS", major: "engin

eering", year: "2017", resume_id: 1)

education2 = Education.create(school: "NYU", location: "New York", degree: "BS", major: "engin

eering", year: "2017", resume_id: 1)
