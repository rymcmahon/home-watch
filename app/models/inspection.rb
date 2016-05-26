class Inspection < ActiveRecord::Base
  belongs_to :client
  validates :mail, presence: true
end
