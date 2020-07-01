class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :description

  belongs_to :user
end