class AddElapsedToEpisodeMarker < ActiveRecord::Migration
  def change
    add_column :episode_markers, :elapsed, :integer, default: 0
  end
end
