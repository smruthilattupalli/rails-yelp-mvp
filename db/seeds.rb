# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# first delete all existing records
Restaurant.destroy_all

# create new records

Restaurant.create(name: 'Wok', address: '10, Barcelona', category: 'chinese')
Restaurant.create(name: 'Sushi Bar', address: '20, Barcelona', category: 'japanese')
Restaurant.create(name: 'Petit Cafe', address: '30, Barcelona', category: 'french')
Restaurant.create(name: 'Waffles Deli', address: '40, Barcelona', category: 'belgian')
Restaurant.create(name: 'Pizzeria', address: '50, Barcelona', category: 'italian')

# puts the no.of records

p "#{Restaurant.count} records of restaurants added"
