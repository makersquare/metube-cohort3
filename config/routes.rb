MetubeCohort3::Application.routes.draw do
  root 'videos#index'

  resources :videos
  resources :users do
    resources :videos
  end
end
