class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def after_sign_up_path_for(resource)
  #   "http://www.hamsterdance.com"
  # end

  def following
    @user  = User.find(params[:id])
    @boats = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @boat  = Boat.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end
#     
end
