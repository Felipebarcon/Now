class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.find(params[:id])
    @event.user = current_user
    if @event.save
      redirect_to dashboard_path
    else
      render "new"
    end
  end

  private

  def event_params
    params.require(:event).permit(:user_id, :location, :description, :start_date_time, :end_date_time )
  end
end
