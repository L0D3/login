class Album < ActiveRecord::Base
  set_table_name "myalbums"
  set_primary_key "albumid"
  has_many :photos ,:foreign_key=>"albumid"
end
