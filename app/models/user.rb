class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # callback function: after user created, create profile with user_id of newly created user

  # seed file for profile should become update rather than create

  has_one :profile, dependent: :destroy
  has_many :boats, dependent: :destroy
end
