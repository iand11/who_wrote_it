require 'faker'


50.times do
person = { first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email }

contact = Contact.create(person)
end
