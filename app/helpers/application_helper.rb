module ApplicationHelper
  
  def format_as_timecode(sec)
    seconds = sec % 60
    minutes = (sec / 60) % 60
    hours = sec / 3600
    
    if hours > 0
      "%d:%02d:%02d" % [hours, minutes, seconds]
    else
      "%d:%02d" % [minutes, seconds]
    end
  end
  
  def parse_timecode(string)
    parts = string.split(":").map(&:to_f)
    parts = [0] + parts if parts.length == 2
    hours, minutes, seconds = parts
    seconds = hours * 3600 + minutes * 60 + seconds
    seconds.to_i
  end
  
  def total_time_in_part(part)
    @part = part
    @episodes = @part.episodes
    @episode_times = Array.new
    @episodes.each do |episode|
      @episode_times << episode.time
    end
    @episode_times.reduce(:+)
  end
  
  def total_time_in_program(program)
    @program = program
    @parts = @program.parts
    @part_times = Array.new
    @parts.each do |part|
      @part_times << total_time_in_part(part)
    end
    @part_times.reduce(:+)
  end
  
  def time_elapsed_in_part(part_marker)
    @part_marker = part_marker
    @episode_markers = @part_marker.episode_markers
    @episode_elapsed_times = Array.new
    @episode_markers.each do |episode_marker|
      @episode_elapsed_times << episode_marker.elapsed
    end
    @episode_elapsed_times.reduce(:+)
  end
  
  def time_elapsed_in_program(program_marker)
    @program_marker = program_marker
    @part_markers = @program_marker.part_markers
    @part_elapsed_times = Array.new
    @part_markers.each do |part_marker|
      @part_elapsed_times << time_elapsed_in_part(part_marker)
    end
    @part_elapsed_times.reduce(:+)
  end
end
