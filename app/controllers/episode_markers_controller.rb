class EpisodeMarkersController < ApplicationController
  
  def update
    episode_marker_service = EpisodeMarkerService.new(params)
    timecode_saved = episode_marker_service.validate_timecode
    @part = episode_marker_service.get_part
    @part_marker = episode_marker_service.get_part_marker
    
    if timecode_saved
      #redirect_to @user
      respond_to do |format|
        format.html { redirect_to @user }
        format.js
      end
    else
      flash[:danger] = "Please enter a valid timecode"
    end
  end
  
  def toggle_completed
    episode_marker_service = EpisodeMarkerService.new(params)
    @episode_marker = episode_marker_service.get_episode_marker
    @episode = episode_marker_service.get_episode
    @part_marker = episode_marker_service.get_part_marker
    @episode_marker.toggle!(:completed)
    if @episode_marker.completed
      @episode_marker.elapsed = @episode.time
    else
      @episode_marker.elapsed = 0
    end
    @episode_marker.save
    #redirect_to @user
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
  

    
end
