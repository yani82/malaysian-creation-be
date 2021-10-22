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
category_three = Category.create(name: 'Jewellery') 
category_four = Category.create(name: 'Clothes') 
category_five = Category.create(name: 'Games') 

item = Item.create(category_id: 1, name: 'Wau', description: 'Traditional handmade kite', price: 75.00)
item_two = Item.create(category_id: 2, name: 'Batik', description: 'A technique of wax-resist dyeing applied to the whole cloth', price: 99.00)
item_three = Item.create(category_id: 3, name: 'Beaded necklace', description: 'Made of handbeaded glass beads by the Iban tribe', price: 80.00)
item_four = Item.create(category_id: 4, name: 'Kebaya Nyonya', description: 'A traditional Peranakan top with intricate details', price:200.00)
item_five = Item.create(category_id: 5, name: 'Congkak', description: 'A traditional game made of carved wood, where the objective is whoever stores all their marbles or shells first - wins!', price: 115.00)
