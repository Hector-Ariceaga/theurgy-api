class DiagnosisSerializer < ActiveModel::Serializer
  attributes :id, :name, :patient_id
  belongs_to :patient
end
