Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :patients
      end
      resources :symptoms
      resources :diagnoses
      resources :treatments
      resources :therapies
    end
  end
end
