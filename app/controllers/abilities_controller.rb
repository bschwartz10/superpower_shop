class AbiltiiesController < ApplicationController
  include ActionView::Helpers::TextHelper
  
  def create
    abilities = Ability.new(user_name: "turtle")
    briefcase.contents.each do |power_id, quantity|
      abilities.powers.new(power_id: power_id, quantity: quantity)
    end
    
    if abilities.save
      session[:briefcase] = nil
      flash[:notice] = "Your abilities are saved! You saved #{briefcase.powers.count} powers."
      redirect_to powers_path
    else
    end
  end
end