class EpisodeMarkersController < ApplicationController
  
  def update
    episode_marker_service = EpisodeMarkerService.new(params)
    updated = episode_marker_service.validate_update
    @part = episode_marker_service.get_part
    @part_marker = episode_marker_service.get_part_marker
    
    if updated
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
    @episode_marker = EpisodeMarker.find(params[:id])
    @episode = Episode.find(@episode_marker.episode_id)
    @part_marker = PartMarker.find(@episode_marker.part_marker_id)
    @program_marker = ProgramMarker.find(@part_marker.program_marker_id)
    @user = User.find(@program_marker.user_id)
    @episode_marker.toggle!(:completed)
    if @episode_marker.completed
      @episode_marker.elapsed = @episode.time
      @episode_marker.save
    else
      @episode_marker.elapsed = 0
      @episode_marker.save
    end
    #redirect_to @user
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
  

    
end
