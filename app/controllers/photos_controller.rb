class PhotosController < ApplicationController
  def index
    
    @photos=Album.find(params[:albumid]).photos
  end
end
