class ProfilesController < ApplicationController

  def index
  end

  def show
    @profile = Profile.find(current_user.id)
    @full_name = (@profile.fname + " " + @profile.lname)

    @new_boat = Boat.new
  end
  
  def new
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end



end # end controller
