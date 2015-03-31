class ProgramMarkersController < ApplicationController
  
  def update
    @part_marker = PartMarker.find(1)
  end
end
