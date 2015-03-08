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

20.times.map do 
   Permit.create! ({
    status:  "closed",
    project: projects.sample,
    location: Faker::Address.city,
    floor: rand(1..6),
    task: "TEST",
    company: "Company Name",
    subcontractor_name: "Bob",

    issued: Faker::Time.date,
    expires: Faker::Time.date,
    admin: Admin.first
    })
end

20.times.map do 
    Permit.create! ({
    status: "ready_to_inspect",
    project: projects.sample,
    location: Faker::Address.city,
    floor: rand(1..6),
    task: "TEST",
    company: "Company Name",
    subcontractor_name: "Bob",

    issued: Faker::Time.date,
    expires: Faker::Time.date,
    admin: Admin.first
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

    issued: Faker::Time.date,
    expires: Faker::Time.date,
    admin: Admin.first
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

    issued: Faker::Time.date,
    expires: Faker::Time.date,
    admin: Admin.first
    })
end