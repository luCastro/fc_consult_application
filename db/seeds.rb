# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PASSWORD = "adminLuciana"

RatReport.delete_all
Team.delete_all
Site.delete_all
Audit.delete_all
Company.delete_all
User.delete_all
AdminUser.delete_all


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

super_user = User.create(
    first_name: "Luciana",
    last_name: "Castro",
    email: "lucastro.marquise@gmail.com",
    role: "Manage",
    password: PASSWORD,
    # admin: true
  )

10.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name

    u = User.create(
        first_name: first_name,
        last_name: last_name,
        email: "#{first_name.downcase}.#{last_name.downcase}@example.com",
        role: Faker::Job.position,
        password: PASSWORD
    )
end

users = User.all

puts Cowsay.say "Created #{users.count} users", :tux

20.times do
    first_name = Faker::Name.female_first_name
    company_name = Faker::Company.name
    
    c = Company.create(
      name: company_name,
      business_name: company_name,
      cnpj: Faker::Company.french_siren_number,
      current_certification: Faker::Company.catch_phrase
    )

    if c.valid?
        rand(1...3).times do
            Site.create(
                line_1: Faker::Address.street_address,
                line_2: "address continuation",
                line_3: "12345",            
                neighborhood: Faker::Address.community,
                city: Faker::Address.city,
                postal_code:Faker::Address.zip,
                telephone:Faker::Address.postcode,
                contact_name: first_name,
                contact_email:"#{first_name.downcase}@#{company_name.downcase}.com",
                # longitude:
                # latidude:
                company: c
            )
        end
    end
end

companies = Company.all
sites = Site.all


puts Cowsay.say("Created #{companies.count} companies", :frogs)
puts Cowsay.say("Created #{sites.count} sites", :frogs)


20.times do
    actvities = ["Security Audit", "Health Audit", "Technology Audit", "Enviroment Audit"]
    a = Audit.create(
        process_number: Faker::Company.french_siren_number,
        scope: Faker::Company.bs,
        activity: actvities.sample,
        company: companies.sample,
        target: Faker::Company.catch_phrase,
        criterion: Faker::Company.bs,
        requirement: Faker::Company.bs,
        audit_doc: Faker::Company.bs,
        start_date: Date.today,
        end_date: Faker::Date.between(2.days.ago, Date.today),
    )
    
    if a.valid?
        RatReport.create(
            introduction: Faker::Lorem.paragraph,
            comment: Faker::Lorem.paragraph,
            observation: Faker::Lorem.paragraph,
            improvement: Faker::Lorem.paragraph,
            conclusion: Faker::Lorem.paragraph,
            audit: a 
        )
    end
end


audits = Audit.all
rat_reports = RatReport.all

puts Cowsay.say("Created #{audits.count} audits", :cow)
puts Cowsay.say("Created #{rat_reports.count} rat_report", :dog)

users.each do |user|
    rand(0...8).times do
        Team.create(
            user: user,
            audit: audits.sample
        )
    end
end

teams = Team.all

puts Cowsay.say("Created #{teams.count} teams", :ghostbusters)