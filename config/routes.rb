Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/hello_url" => "guitars#hello_method"
  get "/guitars" => "guitars#index"
  post "/guitars" => "guitars#create"
  get "/guitars/:id" => "guitars#show"
  patch "/guitars/:id" => "guitars#update"
  delete "/guitars/:id" => "guitars#destroy"
end
