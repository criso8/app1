App1::Application.routes.draw do

  devise_for :users

  resources :workouts

resources :users


get "landing_pages/home"

root :to => 'landing_pages#home'

end
