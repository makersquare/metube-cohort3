MetubeCohort3::Application.routes.draw do

  root 'videos#show_all'
  get '/videos' => 'videos#show_all'
  get '/videos/:video_name_from_user' => 'videos#show', as: 'video'
  
end
