class EpisodeMarkersController < ApplicationController
  
  def update
    @episode_marker = EpisodeMarker.find(params[:id])
    @episode = Episode.find(@episode_marker.episode_id)
    @part_marker = PartMarker.find(@episode_marker.part_marker_id)
    @program_marker = ProgramMarker.find(@part_marker.program_marker_id)
    @user = User.find(@program_marker.user_id)
    if timecode_format_valid(params[:episode_marker][:elapsed])
      @episode_marker.elapsed = view_context.parse_timecode(params[:episode_marker][:elapsed])
      if !(@episode_marker.elapsed > @episode.time)
        @episode_marker.save
      else
        flash[:danger] = "Please enter a valid timecode"
      end
    elsif percent_format_valid(params[:episode_marker][:elapsed])
      @episode_marker.elapsed = (@episode.time * view_context.percent_as_decimal(params[:episode_marker][:elapsed])).round
      @episode_marker.save
      #puts 'working'
    else
      flash[:danger] = "Please enter a valid timecode"
    end
    #redirect_to @user
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
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
  
  
  def timecode_format_valid(input)
    /\A(\d\d:[0-5]|\d:[0-5]|[0-5]?)\d:[0-5]\d\z/.match(input)
  end
  
  def percent_format_valid(input)
    /\A(100|\d?\d)%\z/.match(input)
  end
    
end
