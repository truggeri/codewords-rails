Rails.application.routes.draw do
  root "games#new"
  resources :games, only: %i[create new show]
end
