class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders/new
  def new
    @order = Order.new
  end

  def subregion_options
    render partial: 'subregion_select'
  end

   def city_options
    render partial: 'city_select'
  end
end
