class EpisodeMarkersController < ApplicationController
  
  def update
    episode_marker_service = EpisodeMarkerService.new(params)
    timecode_saved = episode_marker_service.validate_timecode
    @part = episode_marker_service.get_part
    @part_marker = episode_marker_service.get_part_marker
    if timecode_saved
      trigger_ajax_refresh
    else
      flash[:danger] = "Please enter a valid timecode"
    end
  end
  
  def toggle_completed
    episode_marker_service = EpisodeMarkerService.new(params)
    episode_marker_service.toggle_completed
    @part_marker = episode_marker_service.get_part_marker    
    trigger_ajax_refresh
  end
  
  
  private
  
    def trigger_ajax_refresh
      respond_to do |format|
        format.html { redirect_to @user }
        format.js
      end
    end
  
  
end
