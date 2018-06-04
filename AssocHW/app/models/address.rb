class Address < ApplicationRecord
  has_many :accounts
  has_many :users, :through => :account
  
  validates_associated :accounts
  validates :postcode, format: { with: /([A-PR-UWYZ0-9][A-HK-Y0-9][AEHMNPRTVXY0-9]?[ABEHMNPRVWXY0-9]? {1,2}[0-9][ABD-HJLN-UW-Z]{2}|GIR 0AA)/,
    message: "Please enter a valid post code" }
  validates :firstline, :secondline, :postcode, presence: true

end
