class Client < ActiveRecord::Base
  has_many :inspections
  validates :email_one, presence: true, uniqueness: true
end
