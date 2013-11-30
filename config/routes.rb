MetubeCohort3::Application.routes.draw do

  get '/movies/gladiator' => 'movies#show_gladiator'
  get '/movies/matilda' => 'movies#show_matilda'
  
  get '/shows/seinfeld' => 'shows#show_seinfeld'  
  get '/shows/friends' => 'shows#show_friends'  
end
