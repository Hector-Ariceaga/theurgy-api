class CreateTherapies < ActiveRecord::Migration[5.2]
  def change
    create_table :therapies do |t|
      t.integer :patient_id
      t.integer :treatment_id
      t.boolean :active, default: false
    end
  end
end
