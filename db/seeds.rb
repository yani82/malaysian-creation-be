# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Category.destroy_all
# Item.destroy_all

category = Category.create(name: 'Handicrafts')
category_two = Category.create(name: 'Textiles') 

item = Item.create(category_id: 1, name: 'Wau', description: 'Traditional handmade kite', price: 75.00)
item_two = Item.create(category_id: 2, name: 'Batik', description: 'A technique of wax-resist dyeing applied to the whole cloth', price: 99.00)
