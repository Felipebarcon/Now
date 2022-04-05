class ParticipationsController < ApplicationController
  def create
    @participation = Participation.new
    @event = Event.find(params[:event_id])
    @participation.event = @event
    @participation.user = current_user

    if @participation.save
      redirect_to event_path(@event)
    else
      render "events/show"
    end
  end

  def destroy
    @participation = Participation.find(params[:id])
    @participation.destroy

    redirect_to event_path(@participation.event)
  end
end
