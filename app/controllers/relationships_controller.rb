class RelationshipsController < ApplicationController

  def create
    @boat = Boat.find(params[:id])
    Relationship.create!(params[follower_id: :user_id][followed_id: :boat_id])
    redirect_to boat_path(@boat)
  end

  def destroy
    user = Relationship.find(params[:id]).followed
    current_user.unfollow(boat)
    redirect_to user
  end

  # def some_action
  #   respond_to do |format|
  #     format.js
  #   end
  # end
end
