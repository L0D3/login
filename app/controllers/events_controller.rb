class EventsController < ApplicationController
  before_filter :require_login
  def index
    @events= User.find_by_username("USER..dfki-uk").events
  end

end
