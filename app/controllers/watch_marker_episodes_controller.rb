class WatchMarkerEpisodesController < ApplicationController
  
  def toggle_completed
    @ep = WatchMarkerEpisode.find(params[:id])
    @ep_source = Episode.find(@ep.episode_id)
    @part = WatchMarkerPart.find(@ep.watch_marker_part_id)
    @marker = WatchMarker.find(@part.watch_marker_id)
    @user = User.find(@marker.user_id)
    @ep.toggle!(:completed)
    if @ep.completed
      @ep.elapsed = @ep_source.time
      @ep.save
    else
      @ep.elapsed = 0
      @ep.save
    end
    #redirect_to @user
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end
