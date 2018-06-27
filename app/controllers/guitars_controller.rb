class GuitarsController < ApplicationController
  def hello_method
    render json: {hello: "dr owl"}
  end

  def guitar_method
    @guitars = Guitar.all
    render "guitars.json.jbuilder"
  end
end
