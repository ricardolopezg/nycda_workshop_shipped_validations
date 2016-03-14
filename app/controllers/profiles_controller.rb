class ProfilesController < ApplicationController
  def index

    # Profile.new(params[:user_id])
    # @current_profile = Profile.find(current_user.id)
    # @current_user = User.find(current_user.id)

  end

  def show

    # @current_profile = Profile.find(current_user.id)
    @current_user = User.find(current_user.id)
    @full_name = (@current_profile.fname + " " + @current_profile.lname)

    @new_boat = Boat.new
  end
  
  def new
    # @current_profile = Profile.find_by(user_id).last
    # @current_user = User.find(current_user.id)
  end
  
  def create
    @profile = Profile.create(params[:profile])
    if @profile.save
      redirect_to profile_path(@profile.id)
    else
      render profile_new
    end
  end

  def edit
    @current_profile = Profile.find(current_user.id)
    @current_user = User.find(current_user.id)
  end
  
  def update
  end
  
  def destroy
  end

  private

  def profile_params
    params.require(:profile).permit(:fname, :lname, :username)
  end


end
