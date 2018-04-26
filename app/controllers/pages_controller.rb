class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @arts = policy_scope(Art.most_voted)
  end
end
