class RegistrationsController < ApplicationController
  def create
    @registration = Registration.new
    @event = Event.find(params[:event_id])
    @registration.event = @event
    @registration.user = current_user

    if @registration.save
      redirect_to event_path(@event)
    else
      render "events/show"
    end
  end

  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy

    redirect_to event_path(@registration.event)
  end
end
