Rails.application.routes.draw do
  resources :clients

  get "up" => "rails/health#show", as: :rails_health_check

end
