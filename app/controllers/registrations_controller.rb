class RegistrationsController < ApplicationController
  def create
    @registration = Registration.new
    @event = Event.find(params[:event_id])
    @registration.event = @event
    @registration.user = current_user

    if @registration.save
      redirect_to dashboard_path
    else
      render "events/show"
    end
  end
end
