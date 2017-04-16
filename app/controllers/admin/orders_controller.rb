class Admin::OrdersController < Admin::BaseController

  def dashboard
    @orders = Order.all
    @ordered_orders_count = Order.where(status: "ordered").pluck(:status).count

  end

end
