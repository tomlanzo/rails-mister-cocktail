Rails.application.routes.draw do

  resources :cocktails, only: [:show, :index, :new, :create] do
    member do
      resources :doses, only: :create
      # post '/cocktails/:id/doses', to: 'doses#create'
    end
  end

  root "cocktails#index"
end
