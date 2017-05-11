Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
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
