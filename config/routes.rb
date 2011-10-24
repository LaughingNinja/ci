Ci::Application.routes.draw do
 
  resources :countries

  resources :cities

  resources :provinces

  resources :ciprojects

  resources :project_revenue_events

  resources :revenue_events

  root :to => 'ciprojects#index'
 
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

  match '/signup', :to => 'users#new'
  match '/signin', :to => 'sessions#new' 
  match '/signout', :to => 'sessions#destroy'
  
 
end
