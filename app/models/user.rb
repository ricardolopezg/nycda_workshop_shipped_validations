class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :user_profile
  has_one :profile, dependent: :destroy
  has_many :boats, dependent: :destroy
  # has_many :boats, through: :user_boats



  # callback function: after user created, create profile with user_id of newly created user
  accepts_nested_attributes_for :profile

  # before_create
  after_create :build_default_profile


  def build_default_profile
    self.build_profile
    true
  end

end
