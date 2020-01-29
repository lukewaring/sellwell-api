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
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
