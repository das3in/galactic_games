Rails.application.routes.draw do

  root to: "home#index"

  get "login", to: redirect("/auth/discord"), as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  get "auth/:provider/callback", to: "sessions#create"
  get "auth/failure", to: redirect("/")

  get "dashboard", to: "player_dashboard#show", as: "dashboard"
end
