class EventsController < ApplicationController
  before_filter :require_login
  def index
    if params[:year].blank?
      @year=Time.now.to_a[5]
    else
      @year=params[:year]
    end
    @events= User.find_by_username("USER..dfki-uk").events.where(:date_year=>@year)
  end

end
