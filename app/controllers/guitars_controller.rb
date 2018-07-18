class GuitarsController < ApplicationController
  def index
    @guitars = Guitar.all
    render "index.html.erb"
  end
end
