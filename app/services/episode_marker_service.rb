class EpisodeMarkerService
  
  def initialize(params)
    @params = params
    set_related_objects
    @elapsed_input = @params[:episode_marker][:elapsed]
    @total_time = @episode.time
  end
  
  def set_related_objects
    @episode_marker = EpisodeMarker.find(@params[:id])
    @episode = Episode.find(@episode_marker.episode_id)
    @part_marker = PartMarker.find(@episode_marker.part_marker_id)
    @part = Part.find(@part_marker.part_id)
    @program_marker = ProgramMarker.find(@part_marker.program_marker_id)
    @user = User.find(@program_marker.user_id)
  end
  
  def get_part_marker
    return @part_marker
  end
  
  def get_part
    return @part
  end
  
  def validate_update
    case
    when timecode_format_valid
      elapsed = FormatService.parse_timecode(@elapsed_input)
      if elapsed_time_valid?(elapsed)
        @episode_marker.elapsed = elapsed
      end
    when percent_format_valid
      @episode_marker.elapsed = (@episode.time * 
        FormatService.percent_as_decimal(@elapsed_input)).round
    when two_digit_format_valid
      @episode_marker.elapsed = (@elapsed_input).to_i
    else
      return false
    end
    save_update
  end
  
  def save_update
    set_completed
    @episode_marker.save
  end
  
  
  def set_completed
    if (@episode_marker.elapsed == @episode.time)
      @episode_marker.completed = true
    else
      @episode_marker.completed = false
    end
    return @episode_marker.completed
  end
  
  
  
  
  private
  
    def elapsed_time_valid?(elapsed_time)
      !(elapsed_time > @total_time)
    end

    def timecode_format_valid
      /\A(\d\d:[0-5]|\d:[0-5]|[0-5]?)\d:[0-5]\d\z/.match(@elapsed_input)
    end

     def percent_format_valid
      /\A(100|\d?\d)%\z/.match(@elapsed_input)
    end

    def two_digit_format_valid
      /\A[0-5]?\d\z/.match(@elapsed_input)
    end
  
end