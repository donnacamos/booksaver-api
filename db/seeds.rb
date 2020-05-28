# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.where(username: "Donna").first_or_create(username: "Donna", email:"donna@test.com", password:"password")
User.where(username: "Bilbo").first_or_create(username: "Bilbo", email:"bilbo@test.com", password:"password")
User.where(username: "Gandalf").first_or_create(username: "Gandalf", email:"gandalf@test.com", password:"password")

    Book.where(title: "The Hobbit").first_or_create(title: "The Hobbit", 
    author: "JRR Tolkien", 
    description: "A hobbit goes on an unexpected adventure with a wizard and 13 dwarves.")

    Book.where(title: "White Fang").first_or_create(title: "White Fang", 
    author: "Jack London", 
    description: "A wolf dog is tamed and befriended by a man and becomes a house dog.")


    Book.where(title: "The Mysterious Island").first_or_create(title: "The Mysterious Island", 
    author: "Jules Vern", 
    description: "A group of Yankee soldiers are marooned on an island and strange things keep happening to them.")

    Book.where(title: "How To Train Your Dragon").first_or_create(title: "How To Train Your Dragon", 
    author: "Cressida Cowell", 
    description: "A young viking with the help of his toothless dragon has to use his head to save his people.")

    Book.where(title: "Little Women").first_or_create(title: "Little Women", 
    author: "Louisa May Alcott", 
    description: "A coming of age story of four sisters.")

    Book.where(title: "Alice in Wonderland").first_or_create(title: "Alice in Wonderland", 
    author: "Lewis Carroll", 
    description: "A girl follows a white rabbit down his hole to a strange and wonderful land.")



BookOwnership.where(user_id: 1, book_id: 1).first_or_create(user_id: 1, book_id: 1)
BookOwnership.where(user_id: 1, book_id: 2).first_or_create(user_id: 1, book_id: 2)
BookOwnership.where(user_id: 2, book_id: 3).first_or_create(user_id: 2, book_id: 3)
BookOwnership.where(user_id: 2, book_id: 4).first_or_create(user_id: 2, book_id: 4)
BookOwnership.where(user_id: 3, book_id: 5).first_or_create(user_id: 3, book_id: 5)