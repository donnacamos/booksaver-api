class UserSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
     attributes :id, :username, :email, :created_at, :updated_at
     has_many :books
end

