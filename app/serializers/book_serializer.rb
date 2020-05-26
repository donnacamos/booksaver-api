class BookSerializer < ActiveModel::Serializer
    attributes :author_id, :title, :description
    belongs_to :author
  
  end