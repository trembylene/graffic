class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @arts = policy_scope(Art).order(created_at: :desc)
  end
end
