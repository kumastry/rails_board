Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users' => 'users#index'
  get '/posts/show' => 'posts#show'
  resources :postusers, only: [:create]
  resources :posts, only: [:create]
end
