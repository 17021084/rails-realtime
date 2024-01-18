Rails.application.routes.draw do
  root "pages#home"
  mount ActionCable.server => "/cable"
  get "pages/home"
  post "/hello", to: "pages#hello"
end
