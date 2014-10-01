class BandsController < ApplicationController

  # Not gonna lie to you Travis.  I fell asleep last night, way earlier then I planned.
  # I have no excuse for not getting this one done.  I just passed out much earlier then I wanted to,
  # and unfortunately thi is all that I got done while I was awake.  
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
