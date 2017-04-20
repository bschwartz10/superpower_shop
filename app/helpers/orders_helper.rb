module OrdersHelper
  
  def show_pay(order)
    if order.status == "Ordered"
      link_to 'Pay To Complete Order', pay_path, class: "btn btn-primary"
    end
  end
  
  def show_cancel(order)
    unless order.status == "Completed" || order.status == "Cancelled"
      button_to 'Cancel Order', order_path(order, type: "cancel"), class: "btn btn-danger", method: :put
    end
  end
  
end