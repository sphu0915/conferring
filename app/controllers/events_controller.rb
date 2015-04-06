class EventsController < ApplicationController
  def index
  	@events = Event.all
  end

  def show
  	@event = Event.find(params[:id])
  	@comment = Comment.where(event_id: params[:id])
  	@comments = @event.comments
  end

end
