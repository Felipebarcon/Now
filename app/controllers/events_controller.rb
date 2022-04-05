class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      @registration = Registration.new
      @registration.event = @event
      @registration.user = current_user
      @registration.save
      redirect_to events_path
    else
      render "new"
    end
  end

  def index
    @events = Event.all
    @events_sorted = @events.sort_by(&:start_time).reverse

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial: "info_window", locals: { event: event })
      }
    end
  end

  def show
    @event = Event.find(params[:id])
    @registration = Registration.new
    @participants = @event.users

    @registration_event = Registration.where(user: current_user, event: @event)

    @comment = Comment.new
    @comments = @event.comments
  end

  private

  def event_params
    params.require(:event).permit(:user_id, :address, :description, :start_time, :end_time, :activity_id)
  end
end
