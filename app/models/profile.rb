class Profile < ActiveRecord::Base
    belongs_to :user


    validates_presence_of :fname, :lname, :username, on: :update
    validates :username, uniqueness: true

end
