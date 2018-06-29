class GuitarsController < ApplicationController
  def hello_method
    render json: {hello: "dr owl"}
  end

  def index
    @guitars = Guitar.all
    render "guitars.json.jbuilder"
  end

  def show 
    @guitars = Guitar.find_by(id: params[:id])
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
