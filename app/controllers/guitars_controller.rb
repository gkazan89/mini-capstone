class GuitarsController < ApplicationController
  def index
    @guitars = Guitar.all
    render "index.html.erb"
  end

  def create
    @guitar = Guitar.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
    )
    if @guitar.save
      image = Image.new(url: params[:image_url], guitar_id: @guitar.id)
      image.save
      redirect_to "/guitars"
    else
      render json: {errors: @guitar.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @guitar = Guitar.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def edit
    @guitar = Guitar.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @guitar = Guitar.find_by(id: params[:id])
    @guitar.name = params[:name]
    @guitar.price = params[:price]
    @guitar.description = params[:description]
    @guitar.save
    redirect_to "/guitars/#{@guitar.id}"
  end

  def destroy
    @guitar = Guitar.find_by(id: params[:id])
    @guitar.destroy
    redirect_to "/guitars"
  end
end
