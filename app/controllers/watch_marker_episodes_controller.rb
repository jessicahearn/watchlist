class WatchMarkerEpisodesController < ApplicationController
  
  def toggle_completed
    @ep = WatchMarkerEpisode.find(params[:id])
    @ep.toggle!(:completed)
    render nothing: true
  end
end
