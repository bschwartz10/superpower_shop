module ApplicationHelper

   def decrease_quantity_button(power)
      if @briefcase.contents[power.id.to_s] > 1
        button_to '-', briefcase_path(power_id: power.id, type: "decrease"), class: "btn btn-info decrease", method: :patch
      end
   end

   def checkout_button_or_sign_up
      if current_user && @briefcase.total_cost > 0
         button_to 'Checkout Abilities', orders_path(user_id: current_user.id), class: 'btn btn-primary', id: 'checkout_btn'
      elsif session[:user_id].nil?
        link_to "Login or Create Account to Buy Your Abilities!", login_path, class: 'btn btn-info'
      end
   end

   def show_correct_image(power)
     if power.image_url != nil
        power.image_url
     else
        power.image.url
     end
   end
   
   def bootstrap_class_for(flash_type)
     {success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info", danger: "alert-danger"}[flash_type.to_sym] || flash_type.to_s
   end
   
   def flash_messages(opts = {})
     flash.each do |type, message|
       concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(type)} fade in") do
         concat content_tag(:button, 'x'.html_safe, class: "close", data: { dismiss: 'alert' })
         concat message.html_safe
       end)
     end
     nil
   end

end
