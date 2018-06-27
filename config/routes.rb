Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/hello_url" => "guitars#hello_method"
  get "/guitars_url" => "guitars#guitar_method"
end
