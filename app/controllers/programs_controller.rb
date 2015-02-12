class ProgramsController < ApplicationController
  
  def index
    @programs = Program.all.sort_by { |program| program.title }
  end
end
