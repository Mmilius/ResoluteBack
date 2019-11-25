Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources "users"
resources "reports"
resources "resolutions"
resources "realms"

get "/user", to: "resolutions#user"

end
