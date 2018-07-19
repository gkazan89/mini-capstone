Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/guitars" => "guitars#index"
  get "/guitars/new" => "guitars#new"
  post "/guitars" => "guitars#create"
  get "/guitars/:id/edit" => "guitars#edit"
  get "/guitars/:id" => "guitars#show"

  namespace :api do
    get "/hello_url" => "guitars#hello_method"
    get "/guitars" => "guitars#index"
    post "/guitars" => "guitars#create"
    get "/guitars/:id" => "guitars#show"
    patch "/guitars/:id" => "guitars#update"
    delete "/guitars/:id" => "guitars#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    post "/orders" => "orders#create"
  end
end
