class AddCompletedToEpisodeMarker < ActiveRecord::Migration
  def change
    add_column :episode_markers, :completed, :boolean, default: false
  end
end
