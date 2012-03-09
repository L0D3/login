class CreateEventAlbums < ActiveRecord::Migration
  def change
    create_table :event_albums do |t|

      t.timestamps
    end
  end
end
