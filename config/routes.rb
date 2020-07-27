Rails.application.routes.draw do
  resources :userjobs
  resources :jobs
  namespace :api do
    namespace :v1 do
      
      post '/signup', to: 'users#create'
      post '/login', to: 'auth#login'
     
    end
  end
end
