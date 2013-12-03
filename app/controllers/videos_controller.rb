class VideosController < ApplicationController
  def show
    id = params[:id]
    @video = Video.find(id)
  end

  def index
    user = User.find(params[:user_id])
    @videos = user ? user.videos.all : Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to @video
    else
      render 'new'
    end
  end

  private

  def video_params
    params.require(:video).permit(:title, :description, :youtube_id)
  end
end