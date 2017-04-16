class Admin::OrdersController < Admin::BaseController

  def dashboard
    @orders = Order.all
  end

end
