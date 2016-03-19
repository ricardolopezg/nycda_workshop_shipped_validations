class RelationshipsController < ApplicationController

  def create
    boat = Boat.find(params[:followed_id])
    current_user.follow(boat)
    redirect_to boat


    # @boat = Boat.find(current_boat.id)
    # passive_relationships.create(followed_id: @boat.id)
    # @boat = Boat.find(params[:followed_id])
    # @current_user = User.find(current_user.id)
    
    # @relationship = Relationship.new(params[:relationship])
    # @relationship.save!
    # if @relationship.save
      # create.js
    # else
    #   redirect_to boats_path
  end

  # def followers
  #   @boat = Boat.find(params[:id])
  # end

  # def following
  #   @user = User.find(params[:id])
  # end

  def destroy
    boat = Relationship.find(params[:id]).followed
    current_user.unfollow(boat)
    redirect_to boat
  end


private

def relationship_params
  params.require(:relationship).permit(:follower_id, :followed_id)
end

end