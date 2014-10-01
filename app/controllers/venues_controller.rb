class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
  end

  def new
    @venue = Venue.new
  end

  def create
    new_venue = Venue.create(venue_params)
    redirect_to venues_path
  end


  private

  def venue_params
    params.require(:venue).permit(:name, :city, :state, :family_friendly)
  end

end
