class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    authorize current_user
  end
end
