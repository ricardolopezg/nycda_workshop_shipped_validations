class BoatsController < ApplicationController

  def index
  end

  def show
    @boats = User.find(current_user.id).boats
  end
  
  def new
    @new_boat = Boat.new
  end
  
  def create
    @new_boat = Boat.new(boat_params)
    @new_boat.profile_id = current_user.id
    
    if @new_boat.save
      redirect_to profile_path(:id)
    end 
  end

  def edit
  end
  
  def update
  end
  
  def destroy
  end


  private
  def boat_params
    params.require(:boat).permit(:profile_id, :boat_name, :container_capacity, :location)
  end


end #end controller
