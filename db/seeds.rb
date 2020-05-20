# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

book_a = Book.create(id: 1, title: 'The Hobbit', description: 'A hobbit goes on an unexpected journey')
book_b = Book.create(id: 2, title: 'Ella Enchanted', description: 'A girl is cursed with the gift of obedience')

author_a = Author.create(book_id: 1, firstName: 'JRR', lastName: 'Tolkien')
author_b = Author.create(book_id: 2, firstName: 'Gail', lastName: 'Levine') 