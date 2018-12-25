class Treatment < ApplicationRecord
  has_many :therapies
  has_many :patients, through: :therapy
  validates :name, :details, presence: true
end
