class Admin::OrdersController < Admin::BaseController

  def dashboard
    @orders = Order.all
  end

  def filter
    type = params[:type]
    if type == "ordered"
      @orders = Order.where(status: "Ordered")
      render :ordered
    elsif type == "paid"
      @orders = Order.where(status: "Paid")
      render :paid
    elsif type == "cancelled"
      @orders = Order.where(status: "Cancelled")
      render :cancelled
    elsif type == "completed"
      @orders = Order.where(status: "Completed")
      render :completed
    end
  end
end
