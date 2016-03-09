class Profile < ActiveRecord::Base
  has_many :boats
  belongs_to :user

  
end
