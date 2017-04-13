class OrdersController < ApplicationController
  include ActionView::Helpers::TextHelper
  def create
    order = Order.new(user_id: User.find(params[:user_id]))
    @briefcase.contents.each do |power_id, quantity|
      order.powers.new(power_id: power_id, quantity: quantity)
    end
    
    if order.save
      session[:briefcase] = nil
      flash[:notice] = "Your order are saved! You saved #{briefcase.powers.count} powers."
      redirect_to powers_path
    else
    end
  end
end