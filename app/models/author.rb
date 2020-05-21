class Author < ApplicationRecord
    has_many :books
    validates :firstName, :lastName, presence: true 
end
