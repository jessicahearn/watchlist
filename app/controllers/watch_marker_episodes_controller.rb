class WatchMarkerEpisodesController < ApplicationController
  
  def toggle_completed
    @ep = WatchMarkerEpisode.find(params[:id])
    @ep.toggle!(:completed)
    #render nothing: true
    redirect_to do |format|
      format.js
    end
  end
end
