# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
author_a = Author.create(firstName: 'JRR', lastName: 'Tolkien')
author_b = Author.create(firstName: 'Gail', lastName: 'Levine') 

book_a = Book.create(author_id: 1, title: 'The Hobbit', description: 'A hobbit goes on an unexpected journey')
book_b = Book.create(author_id: 2, title: 'Ella Enchanted', description: 'A girl is cursed with the gift of obedience')

