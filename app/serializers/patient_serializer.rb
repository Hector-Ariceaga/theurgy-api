class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :dob, :user_id
end
