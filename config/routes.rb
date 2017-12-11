Rails.application.routes.draw do
  
   namespace :api, defaults: {format: :json} do
    resource :session, only: [:new, :create, :destroy]
    resources :users, only: [:new, :create, :update, :destroy, :index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
