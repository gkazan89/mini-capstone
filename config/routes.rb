Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/hello_url" => "guitars#hello_method"
  get "/guitars_url" => "guitars#guitar_method"
  get "/fender_url" => "guitars#fender_method"
  get "/gibson_url" => "guitars#gibson_method"
  get "/epi_url" => "guitars#epi_method"
end
