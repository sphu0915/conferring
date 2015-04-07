class EventsController < ApplicationController
  def index

  		if params[:id].present?
		@events = Events.where(name: params[:id])
		else
		@events = Event.all
		end
	end
 

  def show
  	@event = Event.find(params[:id])
  	@comment = Comment.new
  	@comments = @event.comments
  end

end
