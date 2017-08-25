Rails.application.routes.draw do
  get 'sessions/new'
  resources :skills
  resources :posts do
    resources :comments
  end
  resources :projects do
    resources :ratings
  end

get 'work' => 'pages#work'
get 'about' => 'pages#about'
get 'blog' => 'pages#blog'
get 'home'=> 'pages#home'
get 'contact' => 'pages#contact'
get 'login', to: 'sessions#new'
delete 'logout', to: 'sessions#destroy'
post 'login', to: 'sessions#create'
get 'signup', to: 'sessions#signup'
post 'signup', to: 'sessions#make'


  root 'pages#home'
end
