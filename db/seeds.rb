# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroying Account and Contact seed data'

Account.destroy_all
Contact.destroy_all

puts 'Creating User, Account and Contact seed data'

User.create(name: 'Luke Waring', email: 'lukewaring@gmail.com')

25.times do
  Account.create(
    name: Faker::Company.name,
    industry: Faker::Company.industry,
    website: Faker::Internet.url
  )
end

25.times do
    Contact.create(
      account_id: (1...25).to_a.sample,
      name: Faker::Name.name,
      title: Faker::Job.title,
      phone: Faker::PhoneNumber.cell_phone,
      email: Faker::Internet.email
    )
  end
