Rails.application.routes.draw do
  resources :movies
  namespace :admin do
    resources :movies
  end
  resources :schedules, path: '/admin/schedules'
  resources :sheets
end
