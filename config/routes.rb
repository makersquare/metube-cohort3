MetubeCohort3::Application.routes.draw do

  root 'videos#show_all'
  get '/videos' => 'videos#show_all'
  get '/videos/:id' => 'videos#show', as: 'video'

end
