class Admin::OrdersController < Admin::BaseController

  def dashboard
    @orders = Order.all
    @ordered_orders_count = Order.where(status: "ordered").pluck(:status).count
    @paid_orders_count = Order.where(status: "paid").pluck(:status).count
    @cancelled_orders_count = Order.where(status: "cancelled").pluck(:status).count
    @completed_orders_count = Order.where(status: "completed").pluck(:status).count
  end

  def filter
    type = params[:type]
      if type == "ordered"
        @orders = Order.where(status: "ordered")
        render :ordered

      end
  end

end
