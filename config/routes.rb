Rails.application.routes.draw do
  resources :games, only: %i[new show]
end
