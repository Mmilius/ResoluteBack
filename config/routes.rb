Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :users 
resources "reports"
resources "resolutions"
resources "realms"

post "login", to: "authentication#login"

# get "/user", to: "resolutions#user"
# get "/reports", to: "resolutions#reports"

end
