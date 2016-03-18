class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def follow
    @boat = Boat.find(params[:id])
    @current_user = User.find(current_user.id)
  end

  def show
    @boat = Boat.find(params[:id])
    @boat_jobs = @boat.jobs
    @current_user = User.find(current_user.id)
  end
  
  def new
    @new_boat = Boat.new
  end
  
  def create
    @current_profile = Profile.find(current_user.id)
    @new_boat = Boat.new(boat_params)
    @new_boat.user_id = current_user.id
    
    if @new_boat.save
      redirect_to profile_path(:id)
    else
      render "profiles/show.html.erb"
    end 
  end

  def edit
    @boat = Boat.find(params[:id])

    @cities_array = ["Algeciras", "Tangier", "Gibraltar", "Ceuta", "Málaga", "Al Hoceima", "Melilla", "Nador", "Almería", "Cartagena", "Oran", "Alicante", "Valencia", "Castellón de la Plana", "Calpe", "Mostaganem", "Dénia", "Sant Carles de la Ràpita", "Tarragona", "Sant Antoni de Portmany", "Ibiza", "Sitges", "Barcelona", "Badalona", "Palma", "Algiers", "Alcúdia", "Cala", "Millor", "Agde", "Sète", "Ciutadella", "Mahón", "Béjaïa", "Marseille", "Jijel", "Toulon", "Monaco", "Cannes", "Nice", "Palermo", "Trieste", "Benghazi", "Alexandria", "Tel-Aviv"]
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
    params.require(:boat).permit(:user_id, :boat_name, :container_capacity, :location, :avatar)
  end


end #end controller
