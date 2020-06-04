class User < ApplicationRecord
    has_secure_password
    has_many :book_ownerships, dependent: :destroy
    has_many :books, through: :book_ownerships

    validates :username, :email, presence: true
    validates :email, uniqueness: true
end
