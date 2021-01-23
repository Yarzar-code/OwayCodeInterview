Rails.application.routes.draw do
  root to: 'cabs#index'
  devise_for :users
  resources :cabs
  namespace :api, defaults: { format: 'json' } do
    get '/get_all_cabs' => 'get_cabs#get_all_cabs'
    get '/get_cab/:id' => 'get_cabs#get_cab'
  end
end
