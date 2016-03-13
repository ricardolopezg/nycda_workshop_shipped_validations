class ProfilesController < ApplicationController

  def index
    @user = current_user
    # @user = User.
    # @current_user = User.find(params(:id))
  end

  def show
    @current_profile = Profile.find(current_user.id)
    @current_user = User.find(current_user.id)
    @full_name = (@current_profile.fname + " " + @current_profile.lname)

    @new_boat = Boat.new
  end
  
  def new
    @user = current_user.id
    @profile = Profile.create
  end
  
  def create
    @profile.id = current_user.id
    @profile = Profile.find(current_user.id)
  end

  def edit
    @current_profile = Profile.find(current_user.id)
    @current_user = User.find(current_user.id)
  end
  
  def update
  end
  
  def destroy
  end



end
