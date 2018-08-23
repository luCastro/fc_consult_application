# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PASSWORD = "123456"

Evidence.delete_all
RatReport.delete_all
Team.delete_all
Audit.delete_all
Site.delete_all
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

3.times do
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

    
    c = Company.create(
      name: "JPCM",
      business_name: "JCPM Participações e Empreendimentos S.A",
      cnpj: "11.483.096/0001-02",
      current_certification: "ISO 9001, ISO 14001 e OHSAS 18001"
    )
    if c.valid?
        # rand(2).times do
        first_name = Faker::Name.female_first_name
            Site.create(
                line_1: "Avenida Engenheiro Antônio de Góes, 60,",
                line_2: "sala 2001,",
                line_3: "sub-unidade 01",            
                neighborhood: "Pina",
                city: "Recife",
                postal_code:"5000-000",
                telephone:"9340-09-09",
                contact_name: first_name,
                contact_email:"com",
                # longitude:
                # latidude:
                company: c
            )

            Site.create(
                line_1: "Avenida Engenheiro Antônio de Góes, 60,",
                line_2: "sala 2001,",
                line_3: "sub-unidade 01",            
                neighborhood: "Pina",
                city: "Recife",
                postal_code:"5000-000",
                telephone:"9340-09-09",
                contact_name: first_name,
                contact_email:"com",
                # longitude:
                # latidude:
                company: c)



            rand(1...8).times do
            actvities = ["Security Audit", "Health Audit", "Technology Audit", "Enviroment Audit"]
            a = Audit.create(
            process_number: Faker::Company.french_siren_number,
            scope: "Distribution and Commerce",
            activity: actvities.sample,
            company: c,
            target: "
            Verify that the certified management system continues to meet the requirements",
            criterion: "ABNT NBR ISO 9001:2008",
            requirement: "4.2, 5.6, 7.1, 7.5, 8.2, 8.3, 8.5",
            audit_doc: "PG-02 PG-15 PE-004 Integrated System",
            site: c.site.sample,
            start_time: Faker::Date.between(30.days.ago, Time.now + 20.days)
        )
        
        end           
    end



    
e = Company.create(
    name: "CTR-PE",
    business_name: "Central de Tratamento de Residuos LTDA",
    cnpj: "07.534.580/0001-46",
    current_certification: "ISO 14001"
  )

  if e.valid?
      # rand(2).times do
      first_name = Faker::Name.female_first_name
          Site.create(
              line_1: "Rodovia BR 101 Norte,",
              line_2: "sala 2001,",
              line_3: "s/n km 28,5",            
              neighborhood: "Igarassu",
              city: "Zona Rural Igarassu",
              postal_code:"53640-000",
              telephone:"(81) 4121.0230",
              contact_name: first_name,
              contact_email:"sac@ctrpe.com.br",
              # longitude:
              # latidude:
              company: e
          )

          first_name = Faker::Name.female_first_name
          Site.create(
              line_1: "Rodovia BR 101 Norte,",
              line_2: "sala 2001,",
              line_3: "s/n km 28,5",            
              neighborhood: "Igarassu",
              city: "Zona Rural Igarassu",
              postal_code:"53640-000",
              telephone:"(81) 4121.0230",
              contact_name: first_name,
              contact_email:"sac@ctrpe.com.br",
              # longitude:
              # latidude:
              company: e
          )

     rand(1...8).times do
         actvities = ["Security Audit", "Health Audit", "Technology Audit", "Enviroment Audit"]
         g = Audit.create(
             process_number: Faker::Company.french_siren_number,
             scope: "Distribution and Commerce",
             activity: actvities.sample,
             company: e,
             target: "
             Verify that the certified management system continues to meet the requirements",
             criterion: "ABNT NBR ISO 9001:2008",
             requirement: "4.2, 5.6, 7.1, 7.5, 8.2, 8.3, 8.5",
             audit_doc: "PG-02 PG-15 PE-004 Integrated System",
             site: e.site.sample,
             start_time: Faker::Date.between(30.days.ago, Time.now + 20.days)
         )
     end
  end
# end

    
 d = Company.create(
     name: "Solunni",
     business_name: "Solunni Servicos Especializados",
     cnpj: "05.419.785/0001-55",
     current_certification: "ISO 9001, ISO 14001 e OHSAS 18001"
   )
   if d.valid?
       # rand(2).times do
       first_name = Faker::Name.female_first_name
           Site.create(
               line_1: "R Feliciano Jose De Farias,",
               line_2: "133",
               line_3: "01",            
               neighborhood: "Boa Viagem",
               city: "Recife",
               postal_code:"5100-000",
               telephone:"(81)3035-6682",
               contact_name: first_name,
               contact_email:"kjkjklj@kjkjk.com",
               # longitude:
               # latidude:
               company: d
           )
       # end

       Site.create(
        line_1: "R Feliciano Jose De Farias,",
        line_2: "133",
        line_3: "01",            
        neighborhood: "Boa Viagem",
        city: "Recife",
        postal_code:"5100-000",
        telephone:"(81)3035-6682",
        contact_name: first_name,
        contact_email:"kjkjklj@kjkjk.com",
        # longitude:
        # latidude:
        company: d
    )

        rand(1...8).times do
         actvities = ["Security Audit", "Health Audit", "Technology Audit", "Enviroment Audit"]
         b = Audit.create(
             process_number: Faker::Company.french_siren_number,
             scope: "Distribution and Commerce",
             activity: actvities.sample,
             company: d,
             target: "
             Verify that the certified management system continues to meet the requirements",
             criterion: "ABNT NBR ISO 9001:2008",
             requirement: "4.2, 5.6, 7.1, 7.5, 8.2, 8.3, 8.5",
             audit_doc: "PG-02 PG-15 PE-004 Integrated System",
             site: d.site.sample,
             start_time: Faker::Date.between(30.days.ago, Time.now + 20.days)
            
         )       
     end
  end
# # end


 






 audits = Audit.all
# # rat_reports = RatReport.all

# puts Cowsay.say("Created #{audits.count} audits", :cow)
# # puts Cowsay.say("Created #{rat_reports.count} rat_report", :dog)

users.each do |user|
        6.times do
        Team.create(
            user: user,
            audit: audits.sample
        )
    end
end

# teams = Team.all

# puts Cowsay.say("Created #{teams.count} teams", :ghostbusters)