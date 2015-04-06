class EventsController < ApplicationController
  def index
  	@events = Event.all
  end

  def show
  	@event = Event.find(params[:id])
  	@comment = Comment.new
  	@comments = @event.comments
  end

end
