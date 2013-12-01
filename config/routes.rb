MetubeCohort3::Application.routes.draw do

  get '/gladiator' => 'videos#show_gladiator'
  get '/matilda' => 'videos#show_matilda'  
  get '/seinfeld' => 'videos#show_seinfeld'  
  get '/friends' => 'videos#show_friends'

end
