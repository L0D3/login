class EventAlbum < ActiveRecord::Base
 set_table_name "spo-event" 
 has_many :albums, :foreign_key=>"albumid", :primary_key=>"o"
 has_many :events, :foreign_key=>"s", :primary_key=>"s"
end
