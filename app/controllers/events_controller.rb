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
  end

  private

  def event_params
    params.require(:event).permit(:user_id, :location, :description, :start_time, :end_time, :activity_id)
  end
end
