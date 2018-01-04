namespace :utils do
  desc "Popular o banco de dados."
  task seed: :environment do
    puts "Tipos de contatos (contacts)"
    500.times do |i|
        Contact.create!(name: Faker::Name.name, 
                        email: Faker::Internet.email, 
                        rmk: LeroleroGenerator.sentence([1,2,3,4,5].sample),
                        kind: Kind.all.sample)
    end
    puts "Tipos de contatos (contacts)... [OK]"

    puts "Tipos de contatos (address)"
    Contact.all.each do |contact|
        Address.create!(street: Faker::Address.street_name, 
                        city: Faker::Address.city, 
                        state: Faker::Address.state,
                        contact: contact)
    end
    puts "Tipos de contatos (address)... [OK]"

    puts "Tipos de contatos (phone)"
    Contact.all.each do |contact|
      Random.rand(1..5).times do |i|
        Phone.create!(phone: Faker::PhoneNumber.phone_number, 
                      contact: contact)
      end
    end
    puts "Tipos de contatos (phone)... [OK]"

  end

end
