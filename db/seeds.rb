# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'faker'

10.times do
  new_name = Faker::Name.name
  addr = Faker::Address.full_address
  phone = Faker::PhoneNumber.cell_phone
  cat = %w[chinese italian japanese french belgian].sample
  Restaurant.create!({ name: new_name, address: addr, phone_number: phone, category: cat })
end
puts 'Finished!'
