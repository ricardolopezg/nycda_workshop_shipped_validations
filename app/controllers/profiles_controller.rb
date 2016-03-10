class ProfilesController < ApplicationController

  def index
  end

  def show
    @profile = Profile.find(current_user.id)
    @full_name = (@profile.fname + " " + @profile.lname)

    @new_boat = Boat.new() 
  end
  
  def new
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end

  private
  def boat_params
    params.require(:boat).permit(:boat_name:, :container_capacity, :location)
  end


end # end controller
