class PhotosController < ApplicationController
  before_filter :require_login
  def index
    @photos=Event.find(params[:eventid]).photos
  end
end
