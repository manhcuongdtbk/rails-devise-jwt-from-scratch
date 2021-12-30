Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      defaults format: :json do
        post :auth, to: 'authentication#create'

        resources :locations, only: [:show] do
          resources :recordings, only: [:index]
        end
      end
    end
  end
end
