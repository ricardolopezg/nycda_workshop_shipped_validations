class Boat < ActiveRecord::Base
  has_many :jobs, dependent: :destroy
  belongs_to :user

  validates :boat_name, uniqueness: true
  
end
