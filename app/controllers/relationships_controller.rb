class RelationshipsController < ApplicationController

  def create
    @boat = Boat.find(current_boat.id])
    @user = User.find(current_user.id)
    @follow = Relationship.create(relationship_params)
    @follow.follower_id = current_user.id
    @follow.followed_id = current_boat.id
  end

  def responder
    create.js
    render boat_path(:id)
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
