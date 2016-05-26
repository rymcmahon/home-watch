class Client < ActiveRecord::Base
  has_many :inspections
  validates :email_one, uniqueness: true
  validates :first_name, :last_name, :street_address, :email_one, presence: true
end
