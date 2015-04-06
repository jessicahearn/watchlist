class EpisodeMarkerService
  
  def initialize(params)
    @params = params
    set_related_objects
  end
  
  def set_related_objects
    @episode_marker = EpisodeMarker.find(@params[:id])
    @episode        = Episode.find(@episode_marker.episode_id)
    @part_marker    = PartMarker.find(@episode_marker.part_marker_id)
    @part           = Part.find(@part_marker.part_id)
    @program_marker = ProgramMarker.find(@part_marker.program_marker_id)
    @user           = User.find(@program_marker.user_id)
  end
  
  # These get methods are necessary to pass variables to ajax 
  # calls from the controller. 
  def get_part_marker
    return @part_marker
  end
  
  def get_part
    return @part
  end
  
  def validate_timecode
    @elapsed_input = @params[:episode_marker][:elapsed]
    case
    when input_as_timecode
      elapsed = FormatService.parse_timecode(@elapsed_input)
      if elapsed_time_valid?(elapsed)
        @episode_marker.elapsed = elapsed
      end
    when input_as_percent
      @episode_marker.elapsed = (@episode.time * 
        FormatService.percent_as_decimal(@elapsed_input)).round
    when input_as_two_digits
      @episode_marker.elapsed = (@elapsed_input).to_i
    else
      return false
    end
    save_timecode
  end
  
  def save_timecode
    set_completed_from_timecode
    @episode_marker.save
  end
  
  def set_completed_from_timecode
    if (@episode_marker.elapsed == @episode.time)
      @episode_marker.completed = true
    else
      @episode_marker.completed = false
    end
    return @episode_marker.completed
  end
  
  def toggle_completed
    @episode_marker.toggle!(:completed)
    set_timecode_from_completed
    @episode_marker.save
  end
  
  def set_timecode_from_completed
    if @episode_marker.completed
      @episode_marker.elapsed = @episode.time
    else
      @episode_marker.elapsed = 0
    end
  end
  
  
  private
  
    def elapsed_time_valid?(elapsed_time)
      !(elapsed_time > @episode.time)
    end

    def input_as_timecode
      /\A(\d\d:[0-5]|\d:[0-5]|[0-5]?)\d:[0-5]\d\z/.match(@elapsed_input)
    end

     def input_as_percent
      /\A(100|\d?\d)%\z/.match(@elapsed_input)
    end

    def input_as_two_digits
      /\A[0-5]?\d\z/.match(@elapsed_input)
    end
  
end