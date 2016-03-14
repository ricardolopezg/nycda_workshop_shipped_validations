class RegistrationsController < ApplicationController

  def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
    params.require(:user).permit(:email, :password, profile_attributes: [:username :fname, :lname])
  end

end
