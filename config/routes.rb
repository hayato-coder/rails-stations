Rails.application.routes.draw do
  resources :movies
  namespace :admin do
    resources :movies
    resources :schedules
  end
  resources :sheets
end
