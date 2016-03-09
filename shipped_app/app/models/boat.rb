class Boat < ActiveRecord::Base
<<<<<<< HEAD
  has_many :jobs, dependent: :destroy
=======
  has_many :jobs
>>>>>>> 7581cd38dc0d59c87e655d790e034208e1584722
  belongs_to :profile

  
end
