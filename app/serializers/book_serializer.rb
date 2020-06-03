class BookSerializer < ActiveModel::Serializer
 # include FastJsonapi::ObjectSerializer
  has_many :users
  attributes :id, :title, :author, :description
end