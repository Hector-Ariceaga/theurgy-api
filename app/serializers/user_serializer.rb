class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password_digest, :clinic, :admin, :email, :image, :uid
  has_many :patients
end
