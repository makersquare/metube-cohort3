MetubeCohort3::Application.routes.draw do

  get '/movies/gladiator' => 'movies#show_gladiator'
  get '/movies/matilda' => 'movies#show_matilda'
  
end
