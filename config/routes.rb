MetubeCohort3::Application.routes.draw do
  root 'videos#index'

  resources :videos

  resources :users

  get 'signin', controller: :logins, action: :new, as: :signin
  post 'signin', controller: :logins, action: :create
  delete 'logout', controller: :logins, action: :destroy, as: :logout
end
