class PhotosController < ApplicationController
  before_filter :require_login
  def index
    @photos=Event.where(:s=>params[:eventid]).select([:title,:s,:o,:collectionid,:creator,:dfki_preview]).first.photos
  end
end
