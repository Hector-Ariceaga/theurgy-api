class Patient < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :symptoms
  has_many :diagnoses
  has_many :therapies
  has_many :treatments, through: :therapies
end
