Rails.application.routes.draw do
  get 'users/new'
  get 'users/show'
  root 'static_pages#home'
  get '/about', to:'static_pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
end
