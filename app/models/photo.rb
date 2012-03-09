class Photo < ActiveRecord::Base
  set_table_name "myphotos"
  set_primary_key "photoid"
  belongs_to :user, :foreign_key=>"creator", :primary_key=>"username"
  belongs_to :album, :foreign_key=>"albumid"

def full_path
  photoname=self.originalfilename.split "."
 "http://ubisworld.org/data/"+user.personalfolder+"/"+self.photoid.gsub("PHOTO..","")+"-m.jpg"
end
def get_thump_path
  photoname=self.originalfilename.split "."
 "http://ubisworld.org/data/"+user.personalfolder+"/"+self.photoid.gsub("PHOTO..","")+"-s.jpg"
end
end
