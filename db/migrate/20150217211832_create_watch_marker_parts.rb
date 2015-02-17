class CreateWatchMarkerParts < ActiveRecord::Migration
  def change
    create_table :watch_marker_parts do |t|
      t.integer :watch_marker_id
      t.integer :part_id
      
      t.belongs_to :watch_marker, index: true
      t.belongs_to :part, index: true

      t.timestamps null: false
    end
  end
end
