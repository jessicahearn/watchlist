class WatchMarkerEpisode < ActiveRecord::Base
  belongs_to :watch_marker_part
  belongs_to :episode
  #default_scope -> { order(sequence_index: :asc) }
  
  #def sequence_index(params)
    #@episode_id = WatchMarkerEpisode.find(params[:id]).episode_id
    #@sequence_index = Episode.find(@episode_id).sequence_index
  #end
  
  #def show
    #@WatchMarkerEpisodes = WatchMarkerEpisode.all.sort_by { |episode_marker| episode_marker.sequence_index }
 # end
end
