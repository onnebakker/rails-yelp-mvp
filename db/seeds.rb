# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Hang Pang',
    address:      '7 Boundary St, London E2 7JE',
    category:     'chinese',
    phone_number: '+442073568339'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'italian',
    phone_number: '+442073572739'
  },
  {
    name:         'Pizza West',
    address:      '712 Boundary St, London E2 7JE',
    category:     'italian',
    phone_number: '+442073577763'
  },
  {
    name:         'Kebabi',
    address:      '51A Shoreditch High St, London E1 6PQ',
    category:     'belgian',
    phone_number: '+442073568000'
  },
  {
    name:         'Noodles Shop',
    address:      '98 Boundary St, London E2 7JE',
    category:     'japanese',
    phone_number: '+442073568118'
  },
  {
    name:         'Pasta Shop',
    address:      '96A Shoreditch High St, London E1 6PQ',
    category:     'italian',
    phone_number: '+442073666668'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
