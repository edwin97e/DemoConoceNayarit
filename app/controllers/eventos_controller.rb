class EventosController < ApplicationController
  
  def index
  	@events = Event.all
  end
end
