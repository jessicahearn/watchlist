class AddCompletedToWatchMarkerEpisode < ActiveRecord::Migration
  def change
    add_column :watch_marker_episodes, :completed, :boolean, default: false
  end
end
