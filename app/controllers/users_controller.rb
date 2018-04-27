class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :my_street_art]

  def show
    @user = User.find(params[:id])
    authorize @user
    @my_arts = policy_scope(Art).where(artist: @user)
    @hearted_arts = @user.votes.up.votables
    @uploaded_arts = policy_scope(Art).where(user: @user)
  end
end
