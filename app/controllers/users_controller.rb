class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :my_street_art]

  def show
    @arts = policy_scope(Art).order(created_at: :desc)
    @user = User.find(params[:id])
    authorize @user
  end
end
