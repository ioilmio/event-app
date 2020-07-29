class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @past_events = Event.previous_events
    @upcoming_events = Event.upcoming_events
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    @event.save
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :date, :location, :user_id)
  end
end
