class ProfilesController < ApplicationController

  def index
  end

  def show
    @current_profile = Profile.find(current_user.id)
    @current_user = User.find(current_user.id)
    @full_name = (@current_profile.fname + " " + @current_profile.lname)

    @new_boat = Boat.new
  end
  
  def new
  end
  
  def edit
    @current_user = User.find(current_user.id)
  end
  
  def update
  end
  
  def destroy
  end



end # end controller
