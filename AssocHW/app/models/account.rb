class Account < ApplicationRecord
  belongs_to :user
  belongs_to :address
  
  validates_associated :user, :address
  validates :accountnumber, numericality: true
  validates :accountnumber, :status, :rank, presence: true
end
