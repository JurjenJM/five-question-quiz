Rails.application.routes.draw do

  root to: 'games#new'

  resources :games, only: [:new, :create, :index, :show]

end


