class OrdersController < ApplicationController
  include CostAnalyzer

  def create(input)
    Order.create(input["items"])
  end

  def order_charge

  end
end
