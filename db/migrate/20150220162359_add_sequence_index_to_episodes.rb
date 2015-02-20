class AddSequenceIndexToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :sequence_index, :integer
  end
end
