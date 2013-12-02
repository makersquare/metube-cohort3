MetubeCohort3::Application.routes.draw do

  root 'videos#show_all'

  get '/videos' => 'videos#show_all', as: 'videos'
  get '/videos/:video_name' => 'videos#show', as: 'video'

end
