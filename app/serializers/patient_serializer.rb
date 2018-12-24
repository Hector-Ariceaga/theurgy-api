class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :dob, :user_id
  belongs_to :user
end
