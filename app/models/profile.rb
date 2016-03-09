class Profile < ActiveRecord::Base
  has_many :boats, dependent: :destroy
  belongs_to :user

  
end
