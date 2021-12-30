Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      defaults format: :json do
        resources :locations do
          resources :recordings
        end
      end
    end
  end
end
