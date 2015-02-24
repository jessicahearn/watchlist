class AddElapsedToWatchMarkerEpisode < ActiveRecord::Migration
  def change
    add_column :watch_marker_episodes, :elapsed, :integer, default: 0
  end
end
