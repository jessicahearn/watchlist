class WatchMarkerEpisodesController < ApplicationController
  
  def update
    @ep = WatchMarkerEpisode.find(params[:id])
    @ep_source = Episode.find(@ep.episode_id)
    @part = WatchMarkerPart.find(@ep.watch_marker_part_id)
    @marker = WatchMarker.find(@part.watch_marker_id)
    @user = User.find(@marker.user_id)
    if timecode_format_valid(params[:watch_marker_episode][:elapsed])
      @ep.elapsed = view_context.parse_timecode(params[:watch_marker_episode][:elapsed])
      if !(@ep.elapsed > @ep_source.time)
        @ep.save
      else
        flash[:danger] = "Please enter a valid timecode"
      end
    else
      flash[:danger] = "Please enter a valid timecode"
    end
    redirect_to @user
  end
  
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
  
  
  def timecode_format_valid(input)
    /^(\d:[0-5]|[0-5]?)\d:[0-5]\d$/.match(input)
  end
end
