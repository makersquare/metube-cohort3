class VideosController < ApplicationController
  def show
    id = params[:id]
    @video = Video.find(id)
  end

  def index
    @videos = Video.all
  end
end