class Profile < ActiveRecord::Base
    belongs_to :user

    validates_presence_of :fname, :lname, :username, on: :update
    validates :username, uniqueness: true

  # http://stackoverflow.com/questions/25094915/profile-model-for-devise-users-on-separate-form
end
