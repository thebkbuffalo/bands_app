Rails.application.routes.draw do
  root "welcome#index"
  resources :bands
  resources :venues
  resources :events

end
