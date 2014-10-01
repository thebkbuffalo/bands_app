class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    new_band = Band.create(band_params)
    redirect_to bands_path
  end

  private

  def band_params
    params.require(:band).permit(:name, :genre, :explicit_lyrics)
  end
end
