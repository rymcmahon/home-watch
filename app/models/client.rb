class Client < ActiveRecord::Base
  has_many :inspections, :dependent => :destroy
  validates :email_one, uniqueness: true
  validates :first_name, :last_name, :street_address, :email_one, presence: true
end
