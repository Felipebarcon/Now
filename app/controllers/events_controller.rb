class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to dashboard_path
    else
      render "new"
    end
  end

  def index
    @events = Event.all

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  private

  def event_params
    params.require(:event).permit(:user_id, :address, :activity_id, :description, :start_date_time, :end_date_time )
  end
end
