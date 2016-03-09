class Boat < ActiveRecord::Base
  has_many :jobs
  belongs_to :profile

  
end
