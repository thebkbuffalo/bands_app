class Event < ActiveRecord::Base
  def new
    @event = Event.all
  end

  def create
    new_event = Event.create(event_params)
    redirect_to venues_path
  end

  private

  def event_params
    params.require(:event).permit(:name, :city, :state, :family_friendly)
  end
end
