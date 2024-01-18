Rails.application.routes.draw do
  resources :posts
  root "pages#home"
  mount ActionCable.server => "/cable"
  get "pages/home"
  post "/hello", to: "pages#hello"
end
