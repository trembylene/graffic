class ArtsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :search, :show]
  before_action :find_art, only: [:show, :update, :edit]

  def index
    @arts = policy_scope(Art).order(created_at: :desc)
  end

  def search
  end

  def new
    @art = Art.new
    authorize @art
    # render layout: 'modal'
  end

  def create
    @art = Art.new(art_params)
    authorize @art
    @art.user_id = current_user.id
    if @art.save
      redirect_to arts_path(@art)
    else
      render :new
    end
  end

  def show
  end

  def edit
    authorize @art
  end

  def update
    authorize @art
  end

  private

  def find_art
    @art = Art.find(params[:id])
  end

  def art_params
    params.require(:art).permit(:title, :location, :description, :tags, :photo, :photo_cache, :painted_over, :published)
  end
end
