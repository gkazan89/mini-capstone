class GuitarsController < ApplicationController
  def hello_method
    render json: {hello: "dr owl"}
  end

  def index
    @guitars = Guitar.all
    render "index.json.jbuilder"
  end

  def show 
    @guitar = Guitar.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @guitar = Guitar.new(
        name: params[:name],
        price: params[:price],
        image_url: params[:image_url],
        description: params[:description],
      )

    if @guitar.save
      render "show.json.jbuilder"
    else
      render json: {errors: @guitar.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @guitar = Guitar.find_by(id: params[:id])
    @guitar.name = params[:name] || @guitar.name
    @guitar.price = params[:price]  || @guitar.price
    @guitar.image_url = params[:image_url] || @guitar.image_url
    @guitar.description = params[:description] || @guitar.description
    if @guitar.save
      render "show.json.jbuilder"
    else
      render json: {errors: @guitar.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @guitar = Guitar.find_by(id: params[:id])
    @guitar.destroy
    render json: {message: "Item eliminated"}
  end
end
