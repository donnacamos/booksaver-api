class AuthorSerializer < ActiveModel::Serializer
    attributes :id, :firstName, :lastName
    has_many :books
  
  end