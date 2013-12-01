MetubeCohort3::Application.routes.draw do

  get '/videos/gladiator' => 'videos#show_gladiator'
  get '/videos/matilda' => 'videos#show_matilda'  
  get '/videos/seinfeld' => 'videos#show_seinfeld'  
  get '/videos/friends' => 'videos#show_friends'

end
