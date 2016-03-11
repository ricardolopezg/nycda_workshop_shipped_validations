class BoatsController < ApplicationController

  def index
  end

  def show
    # @boats = User.find(current_user.id).boats
  end
  
  def new
    @new_boat = Boat.new
  end
  
  def create
    @new_boat = Boat.new(boat_params)
    @new_boat.user_id = current_user.id
    
    if @new_boat.save
      redirect_to profile_path(:id)
    else
      render :show
    end 
  end

  def edit
    @boat = Boat.find(params[:id])
  end
  
  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)

    if @boat.save
      redirect_to profile_path(:id)
    else
      render :edit
    end
  end
  
  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy

    redirect_to profile_path([:id])
  end


  private
  def boat_params
    params.require(:boat).permit(:user_id, :boat_name, :container_capacity, :location)
  end


end #end controller
