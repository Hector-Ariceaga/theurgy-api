Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:new, :create, :show] do
        resources :patients
      end
    end
  end
end
