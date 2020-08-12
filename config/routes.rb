Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :contact_activities
    end
  end
  namespace :api do
    namespace :v1 do
      resources :contact_opportunities
    end
  end
  namespace :api do
    namespace :v1 do
      resources :contacts
    end
  end
  namespace :api do
    namespace :v1 do
      resources :activities
    end
  end
  namespace :api do
    namespace :v1 do
      resources :opportunities
    end
  end
  namespace :api do
    namespace :v1 do
      resources :accounts
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users
      post '/signin', to: 'user_token#create'
      post '/signup', to: 'users#create'
    end
  end
end
