Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/api/ping", to: 'api/ping#index'
  root "api/ping#index"
end
