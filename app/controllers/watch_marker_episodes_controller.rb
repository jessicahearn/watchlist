class WatchMarkerEpisodesController < ApplicationController
  
  def toggle_completed
    @ep = WatchMarkerEpisode.find(params[:id])
    @part = WatchMarkerPart.find(@ep.watch_marker_part_id)
    @marker = WatchMarker.find(@part.watch_marker_id)
    @user = User.find(@marker.user_id)
    @ep.toggle!(:completed)
    #redirect_to @user
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end
