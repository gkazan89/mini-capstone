class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def create
    # @guitar = Guitar.find_by(id: params[:product_id])
    order = Order.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      # subtotal: price*quantity,
      # tax: tax,
      # total: subtotal + tax,
    )
    # order.save
    render json: {message: "order placed"}, status: :created
  end
end
