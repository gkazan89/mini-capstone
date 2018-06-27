class GuitarsController < ApplicationController
  def hello_method
    render json: {hello: "dr owl"}
  end
end
