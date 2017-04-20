class Admin::OrdersController < Admin::BaseController

  def dashboard
    @orders = Order.all
    @ordered_orders_count = Order.where(status: "Ordered").pluck(:status).count
    @paid_orders_count = Order.where(status: "Paid").pluck(:status).count
    @cancelled_orders_count = Order.where(status: "Cancelled").pluck(:status).count
    @completed_orders_count = Order.where(status: "Completed").pluck(:status).count
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
