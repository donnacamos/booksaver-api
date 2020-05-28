class Book < ApplicationRecord
    has_many :book_ownerships, dependent: :destroy
    has_many :users, through: :book_ownerships
end
