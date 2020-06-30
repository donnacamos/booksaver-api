# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    DATA = {
        :user_keys => ["username", "email", "password"],
        :users => [
          ["Donna", "donna@test.com", "donna"],
          ["Gandalf", "gandalf@wizard.com", "gandalf"],
          ["Bilbo", "bilbo@baggins.com", "bilbo"] 
        ],
      
        :book_keys => ["user_id", "title", "author", "description"],
        :books => [
          [1, "The Hobbit", "JRR Tolkien", "A hobbit goes on an unexpected adventure with a wizard and 13 dwarves."],
          [2, "The Mysterious Island", "Jules Vern", "A group of Yankee soldiers are marooned on an island and strange things keep happening to them."],
          [3, "How To Train Your Dragon", "Cressida Cowell", "A young viking with the help of his toothless dragon has to use his head to save his people."]
        ]
    }

    def main
        make_users
        make_books
      end
      
      def make_users
        DATA[:users].each do |user|
          new_user = User.new
          user.each_with_index do |attr, i|
            new_user.send(DATA[:user_keys][i]+"=", attr)
          end
          new_user.save
        end
      end
      
      def make_books
        DATA[:books].each do |book|
          new_book = Book.new
          book.each_with_index do |attr, i|
            new_book.send(DATA[:book_keys][i]+"=", attr)
          end
          new_book.save
        end
      end

      main