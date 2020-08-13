Rails.application.routes.draw do
  resources :static_jobs
  resources :userjobs
  resources :jobs
  namespace :api do
    namespace :v1 do
      resources :users
      post '/signup', to: 'users#create'
      post '/login', to: 'auth#login'
     
    end
  end
end
