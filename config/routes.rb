require 'sidekiq/web'

Rails.application.routes.draw do
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  resource :home
  resources :apps
  root to: 'sites#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
