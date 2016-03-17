class ProfilesController < ApplicationController

  def index

  end

  def show
    # @profile = Profile.current_user
    @current_profile = Profile.find(current_user.id)
    @current_user = User.find(current_user.id)

    @new_boat = Boat.new
  end
  
  def new
    
  end
  
  def create
   @profile = Profile.create(params[:id])
    if @profile.save
      redirect_to edit_profile_path(@profile)
    else
      redirect_to new_user_registration_path
    end
  end

  def edit
    @profile = Profile.find(params[:id])
  end
  
  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)
    
    if @profile.save
      redirect_to profile_path(:id)
    else
      render :edit
    end
  end
  
  def destroy
  end

  private

    def profile_params
      params.require(:profile).permit(:fname, :lname, :username)
    end

end

