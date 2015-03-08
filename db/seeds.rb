require 'ffaker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

projects = 10.times.map do
    Project.create! ({
        name: Faker::Address.city,
        number: Faker::Address.building_number,
        phase: rand(1..3)
    })
end

admins = 20.times.map do
    Admin.create! ({
        email: Faker::Internet.email,
        password: "password",
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
        })
end


20.times.map do 
   Permit.create! ({
    status:  "closed",
    project: projects.sample,
    location: Faker::Address.city,
    floor: rand(1..6),
    task: "TEST",
    company: "Company Name",
    subcontractor_name: "Bob",

    sec1_q1: [true, false].sample,
    sec1_q2: [true, false].sample, 
    sec1_q3: [true, false].sample,
    sec1_q4: [true, false].sample,
    sec1_q5: [true, false].sample,
    sec1_q6:  ["yes", "no", "na"].sample,
    sec1_q7: [true, false].sample,
    sec1_q8:  ["yes", "no", "na"].sample,
    sec1_q9:  ["yes", "no", "na"].sample,
    sec1_q10:  ["yes", "no", "na"].sample,
    sec1_q11: [true, false].sample,
    sec1_q12:  ["yes", "no", "na"].sample,
    sec1_q13:  ["yes", "no", "na"].sample,
    sec1_q14: [true, false].sample,

    issued: Faker::Time.date,
    expires: Faker::Time.date,
    admin: admins.sample
    })
end

20.times.map do 
    Permit.create! ({
    project: projects.sample,
    location: Faker::Address.city,
    floor: rand(1..6),
    task: "TEST",
    company: "Company Name",
    subcontractor_name: "Bob",

    sec1_q1: [true, false].sample,
    sec1_q2: [true, false].sample, 
    sec1_q3: [true, false].sample,
    sec1_q4: [true, false].sample,
    sec1_q5: [true, false].sample,
    sec1_q6:  ["yes", "no", "na"].sample,
    sec1_q7: [true, false].sample,
    sec1_q8:  ["yes", "no", "na"].sample,
    sec1_q9:  ["yes", "no", "na"].sample,
    sec1_q10:  ["yes", "no", "na"].sample,
    sec1_q11: [true, false].sample,
    sec1_q12:  ["yes", "no", "na"].sample,
    sec1_q13:  ["yes", "no", "na"].sample,
    sec1_q14: [true, false].sample,

    issued: Faker::Time.date,
    expires: Faker::Time.date,
    admin: admins.sample
    })
end

20.times.map do 
   Permit.create!({
    status: "work_completed",
    project: projects.sample,
    location: Faker::Address.city,
    floor: rand(1..6),
    task: "TEST",
    company: "Company Name",
    subcontractor_name: "Bob",

    sec1_q1: [true, false].sample,
    sec1_q2: [true, false].sample, 
    sec1_q3: [true, false].sample,
    sec1_q4: [true, false].sample,
    sec1_q5: [true, false].sample,
    sec1_q6:  ["yes", "no", "na"].sample,
    sec1_q7: [true, false].sample,
    sec1_q8:  ["yes", "no", "na"].sample,
    sec1_q9:  ["yes", "no", "na"].sample,
    sec1_q10:  ["yes", "no", "na"].sample,
    sec1_q11: [true, false].sample,
    sec1_q12:  ["yes", "no", "na"].sample,
    sec1_q13:  ["yes", "no", "na"].sample,
    sec1_q14: [true, false].sample,

    issued: Faker::Time.date,
    expires: Faker::Time.date,
    admin: admins.sample
    })
end



20.times.map do 
   Permit.create!({
    status: "open",
    project: projects.sample,
    location: Faker::Address.city,
    floor: rand(1..6),
    task: "TEST",
    company: "Company Name",
    subcontractor_name: "Bob",

    sec1_q1: [true, false].sample,
    sec1_q2: [true, false].sample, 
    sec1_q3: [true, false].sample,
    sec1_q4: [true, false].sample,
    sec1_q5: [true, false].sample,
    sec1_q6:  ["yes", "no", "na"].sample,
    sec1_q7: [true, false].sample,
    sec1_q8:  ["yes", "no", "na"].sample,
    sec1_q9:  ["yes", "no", "na"].sample,
    sec1_q10:  ["yes", "no", "na"].sample,
    sec1_q11: [true, false].sample,
    sec1_q12:  ["yes", "no", "na"].sample,
    sec1_q13:  ["yes", "no", "na"].sample,
    sec1_q14: [true, false].sample,

    issued: Faker::Time.date,
    expires: Faker::Time.date,
    admin: admins.sample
    })
end