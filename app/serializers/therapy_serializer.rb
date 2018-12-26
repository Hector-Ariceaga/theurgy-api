class TherapySerializer < ActiveModel::Serializer
  attributes :id, :patient_id, :treatment_id, :active 
  belongs_to :patient 
  belongs_to :treatment
end
