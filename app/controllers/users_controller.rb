class UsersController < ApplicationController
  
  def index
    @users = User.all.sort_by { |user| user.name }
  end
  
  def show
    @user = User.find(params[:id])
    #@episode_markers = WatchMarkerEpisode.joins(:episode).order("episodes.sequence_index asc")
  end
end
