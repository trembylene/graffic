class ArtsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :search, :show]
  before_action :set_art, only: [:show, :update, :edit, :like, :claim]

  def index
    @arts = policy_scope(Art).order(created_at: :desc)
  end

  def search
    if !params[:search_location]
      redirect_to root_path
    elsif params[:search_location].empty?
      redirect_to root_path
    else
      @arts = policy_scope(Art.near(params[:search_location], 50).order("distance"))
    end
    if params[:filter] == "popular"
      @arts = policy_scope(@arts.most_voted)
    elsif params[:filter] == "recent"
      @arts = policy_scope(@arts.reorder(created_at: :desc))
    end
    if params[:search]
      @arts = policy_scope(@arts.search(params[:search]))
    else
      @arts = @arts
    end
    @markers = @arts.map do |art|
      {
        lat: art.latitude,
        lng: art.longitude,
        id: art.id,
        infoWindow: {
          content: "<a href='#{art.id}' id='art_#{art.id}'><strong>#{art.title}</strong><br>"
        }
      }
    end
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
    if @art.artist
      @artist = User.find(@art.artist_id)
    end
    @user = User.find(@art.user_id)
    @markers = [{
      lat: @art.latitude,
      lng: @art.longitude,
      id: @art.id,
      infoWindow: {
        content: "<a href='#{@art.id}' id='@art_#{@art.id}'><strong>#{@art.title}</strong><br>"
      }
    }]
  end

  def edit
  end

  def update
    @art.update(art_params)
    respond_to do |format|
      if @art.update(art_params)
        format.html { redirect_to @art, notice: 'Your art was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def like
    current_user.toggle_like(@art)
    respond_to do |format|
      format.html { redirect_to art_path(@art) }
      format.js
    end
  end

  def claim
    @art.update!(artist: current_user)
    redirect_to @art
  end

  def mine
    @arts = policy_scope(Art).where(artist: current_user)
  end

  def uploaded
    @arts = policy_scope(Art).where(user: current_user)
  end

  def hearted
    @arts = current_user.votes.up.votables
  end

  private

  def art_params
    params.require(:art).permit(:title, :location, :latitude, :longitude, :description, :tags, :photo, :photo_cache, :painted_over, :published, :owner)
  end

  def set_art
    @art = Art.find(params[:id])
    authorize @art
  end
end
