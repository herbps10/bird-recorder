Rails.application.routes.draw do
  resources :reports
  resources :devices
  devise_for :users

  get '/profile', to: 'profile#show', as: 'show'
  post '/profile/claim_device', to: 'profile#claim_device', as: 'claim_device'

  post '/api/report', to: 'api#report'
end
