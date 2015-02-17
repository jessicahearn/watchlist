class ProgramsController < ApplicationController
  
  def index
    @programs = Program.all.sort_by { |program| program.title }
  end
  
  def show
    @program = Program.find(params[:id])
  end
end
