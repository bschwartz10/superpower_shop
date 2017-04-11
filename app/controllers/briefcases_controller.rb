class BriefcasesController < ApplicationController
  include ActionView::Helpers::TextHelper
  
  def create
    power = Power.find(params[:power_id])
    # briefcase = session[:briefcase] || {}
    # briefcase[power.id.to_s] ||= 0
    # briefcase[power.id.to_s] += 1
    # session[:briefcase] = briefcase
    @briefcase.add_power(power.id)
    session[:briefcase] = @briefcase.contents
    flash[:notice] = "You now have #{pluralize(@briefcase.count_of(power.id), power.title)}."
    redirect_to powers_path
  end
  
  def show
    @powers = @briefcase.contents.map do |power_id, quantity|
      Power.find(power_id)
    end
  end
  
end