class CreateWatchMarkerEpisodes < ActiveRecord::Migration
  def change
    create_table :watch_marker_episodes do |t|
      t.integer :watch_marker_part_id
      t.integer :episode_id
      
      t.belongs_to :watch_marker_part, index: true
      t.belongs_to :episode, index: true

      t.timestamps null: false
    end
  end
end
