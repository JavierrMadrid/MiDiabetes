Rails.application.routes.draw do
  root to: 'page#index'
  get 'index', to: 'page#index'
  get '/aboutMe', to: 'page#aboutMe'
  get '/services', to: 'page#services'
  get '/contact', to: 'page#contact'

  namespace :admin, defaults: {format: :html} do
    resources :comidas
  end

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :comidas, only: [:index] do
      end
    end
  end
end
