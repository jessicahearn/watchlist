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
  
end
