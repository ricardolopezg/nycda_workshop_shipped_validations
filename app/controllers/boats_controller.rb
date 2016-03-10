class BoatsController < ApplicationController

  def index
  end

  def show
    @boats = User.find(current_user.id).boats
  end
  
  def new
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end




end #end controller
