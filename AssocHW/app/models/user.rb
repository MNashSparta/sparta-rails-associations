class User < ApplicationRecord
  has_many :accounts
  has_many :addresses, :through => :account
  
  validates_associated :accounts
  validates :firstname, :lastname, :email, presence: true
  validates :email, uniqueness: true
end
