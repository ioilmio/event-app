class EventsController < ApplicationController
  before_action :authorize, only: [:new]
  def index
    @events = Event.all
    @past_events = Event.past
    @upcoming_events = Event.upcoming
    # @user = User.find(@event.creator_id)
  end

  def show
    @event = Event.find(params[:id])
    @past_events = Event.past
    @upcoming_events = Event.upcoming
    @user = User.find(@event.creator_id)
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to(events_path, notice: 'Event was successfully created')
    else
      flash.now[:alert] = 'Event wasnt created'
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:id, :title, :description, :date, :location, :creator_id)
  end
end
