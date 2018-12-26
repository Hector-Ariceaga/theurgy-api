class SymptomSerializer < ActiveModel::Serializer
  attributes :id, :name, :patient_id
  belongs_to :patient
end
