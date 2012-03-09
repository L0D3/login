class Event < ActiveRecord::Base
  set_table_name "myevents"
  set_primary_key "s"
  has_many :eventAlbums ,:foreign_key=>"s"
  has_many :albums, :through=>:eventAlbums
  has_many :photos, :through=>:albums
  belongs_to :user, :primary_key=>"creator", :foreign_key=>"id"
  def date
  end
end
