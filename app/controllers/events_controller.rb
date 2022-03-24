class EventsController < ApplicationController
  def new
    @event = Event.all
  end
end
