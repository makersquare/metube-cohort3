MetubeCohort3::Application.routes.draw do
  root 'videos#index'

  resources :videos do
    post 'rate', on: :member
  end

  resources :users do
    resources :videos, only: [:index, :show]
  end

  get 'signin', controller: :logins, action: :new, as: :signin
  post 'signin', controller: :logins, action: :create
  delete 'logout', controller: :logins, action: :destroy, as: :logout
end
