class VideosController < ApplicationController
  def show
    @video = Video.find(params[:id])
  end

  def index
    user = User.find(params[:user_id]) if params[:user_id]
    @videos = user ? user.videos.all : Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    @video.user_id = current_user.id
    if @video.save
      redirect_to @video
    else
      render 'new'
    end
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    @video.update(video_params)
    redirect_to root_path
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to root_path
  end

  private

  def video_params
    params.require(:video).permit(:title, :description, :youtube_id)
  end
end