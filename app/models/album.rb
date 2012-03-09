class Album < ActiveRecord::Base
  set_table_name "myalbums"
  set_primary_key "albumid"
  has_many :photos ,:foreign_key=>"albumid"
  has_many :eventAlbums ,:foreign_key=>"o"
  has_many :events, :through=>:eventAlbums
end
