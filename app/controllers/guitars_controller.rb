class GuitarsController < ApplicationController
  def index
    @guitars = Guitar.all
    render "index.html.erb"
  end

  def show
    @guitar = Guitar.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end
end
