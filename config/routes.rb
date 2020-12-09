Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "static_pages#root"

  namespace :api, defaults: {format: :json} do
    resources :legislators, only: [:create, :destroy]
    resources :constituents, only: [:create, :destroy]
    resource :session, only: [:create, :destroy]
    resources :posts, only: [:index, :create, :show, :destroy] do
      resources :comments, only: [:index]
    end
    resources :comments, only: [:create, :show, :edit, :destroy]
  end

end
