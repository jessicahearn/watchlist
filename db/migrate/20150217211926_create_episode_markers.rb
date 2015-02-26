class CreateEpisodeMarkers < ActiveRecord::Migration
  def change
    create_table :episode_markers do |t|
      t.integer :part_marker_id
      t.integer :episode_id
      
      t.belongs_to :part_marker, index: true
      t.belongs_to :episode, index: true

      t.timestamps null: false
    end
  end
end
