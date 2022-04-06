Rails.application.routes.draw do

  resources :dog_houses, only: [:show] do
    resources :reviews, only: [:show, :index]
  end

  resources :dog_houses do
    resources :reviews do
      resources :comments
    end
  end

end
