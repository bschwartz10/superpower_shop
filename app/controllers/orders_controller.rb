class OrdersController < ApplicationController
  include ActionView::Helpers::TextHelper

  def index
    @orders = current_user.orders
  end

  def create
    order = Order.new(user_id: current_user.id)
    @briefcase.contents.each do |power_id, quantity|
      order.powers << Power.find(power_id)
      order.order_powers.last.power_quantity = quantity
    end

    if order.save
      session[:briefcase] = nil
      flash[:notice] = "Your order was successfully placed. You ordered #{pluralize(order.quantity, "power")}."
      redirect_to order_path(order)
    else
    end
  end

  def show
    if current_admin?
      @order = Order.find(params[:id])
    elsif current_user
      @order = current_user.orders.find(params[:id])
    end
    @powers = @order.powers
  end

  def update
    type = params[:type]
    if current_admin?
      @order = Order.find(params[:id])
      if type == "cancel"
        @order.update(status: "Cancelled")
      elsif type == "pay"
        @order.update(status: "Paid")
      elsif type == "complete"
        @order.update(status: "Completed")
      end
    elsif current_user
      @order = current_user.orders.find(params[:id])
      if type == "cancel"
        @order.update(status: "Cancelled")
      end
    end
    
    redirect_to powers_path
  end

end
