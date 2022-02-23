class VenuesController < ApplicationController
  before_action :set_venue, only: %i[show edit update destroy]

  # GET /venues
  def index
    @q = Venue.ransack(params[:q])
    @venues = @q.result(distinct: true).includes(:menu_items,
                                                 :fans).page(params[:page]).per(10)
  end

  # GET /venues/1
  def show
    @dish = Dish.new
  end

  # GET /venues/new
  def new
    @venue = Venue.new
  end

  # GET /venues/1/edit
  def edit; end

  # POST /venues
  def create
    @venue = Venue.new(venue_params)

    if @venue.save
      redirect_to @venue, notice: "Venue was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /venues/1
  def update
    if @venue.update(venue_params)
      redirect_to @venue, notice: "Venue was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /venues/1
  def destroy
    @venue.destroy
    redirect_to venues_url, notice: "Venue was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_venue
    @venue = Venue.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def venue_params
    params.require(:venue).permit(:venue, :address, :neighborhood,
                                  :google_maps_url)
  end
end
