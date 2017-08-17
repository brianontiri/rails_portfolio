Rails.application.routes.draw do
  get 'sessions/new'

  resources :posts

get 'work' => 'pages#work'
get 'about' => 'pages#about'
get 'blog' => 'pages#blog'
get 'home'=> 'pages#home'
get 'contact' => 'pages#contact'
get 'login', to: 'sessions#new'
delete 'logout', to: 'sessions#destroy'
post 'login', to: 'sessions#create'



  root 'pages#home'
end
