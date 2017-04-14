module ApplicationHelper

   def decrease_quantity_button(power)
      if @briefcase.contents[power.id.to_s] > 1
       button_to '-', briefcase_path(power_id: power.id, type: "decrease"), method: :patch
      end
   end

   def checkout_button_or_sign_up
      if current_user
         button_to 'Checkout Abilities', orders_path(user_id: current_user.id), class: 'btn btn-primary', id: 'checkout_btn'
      elsif session[:user_id].nil?
         link_to "Login or Create Account to Buy Your Abilities!", login_path, class: 'btn btn-info'
      end
   end


end
