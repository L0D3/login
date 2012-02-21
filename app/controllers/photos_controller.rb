class PhotosController < ApplicationController
  before_filter :require_login
  def index
    
    @photos=Album.find(params[:albumid]).photos
  end
end
