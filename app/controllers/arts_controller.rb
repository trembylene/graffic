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
  end

  def create
    @art = Art.new(art_params)
    authorize @art
    @art.user_id = current_user.id
    @art.artist_id = current_user.id if params[:other][:owner] == "1"
    if @art.save
      redirect_to arts_path
    else
      render :new
    end
  end

  def show
    authorize @art
  end

  def edit
    authorize @art
  end

  def update
    authorize @art
    @art.update(art_params)
    respond_to do |format|
      if @art.update(art_params)
        format.html { redirect_to @art, notice: 'Your art was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private

  def find_art
    @art = Art.find(params[:id])
  end

  def art_params
    params.require(:art).permit(:title, :location, :latitude, :longitude, :description, :tags, :photo, :photo_cache, :painted_over, :published, :owner)
  end
end
