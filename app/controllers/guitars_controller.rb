class GuitarsController < ApplicationController
  def hello_method
    render json: {hello: "dr owl"}
  end

  def index
    @guitars = Guitar.all
    render "guitars.json.jbuilder"
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
    @guitar.save
    render "show.json.jbuilder"
  end

  def update
    @guitar = Guitar.find_by(id: params[:id])
    @guitar.name = params[:name] || @guitar.name
    @guitar.price = params[:price]  || @guitar.price
    @guitar.image_url = params[:image_url] || @guitar.image_url
    @guitar.description = params[:description] || @guitar.description
    @guitar.save
    render "show.json.jbuilder"
  end

  def fender_method
    @guitar = Guitar.first
    render "instrument.json.jbuilder"
  end

  def gibson_method
    @guitar = Guitar.second
    render "instrument.json.jbuilder"
  end

  def epi_method
    @guitar = Guitar.third
    render "instrument.json.jbuilder"
  end

  def fret_method
    num = params["variable"]
    @guitar = Guitar.find_by(id:"#{num}")
    render "instrument.json.jbuilder"
  end
end
