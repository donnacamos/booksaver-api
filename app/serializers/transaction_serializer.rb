class AuthorSerializer < ActiveModel::Serializer
    attributes :id, :book_id, :firstName, :lastName
    has_many :books
  
  end