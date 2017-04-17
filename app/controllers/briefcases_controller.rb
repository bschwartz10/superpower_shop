class BriefcasesController < ApplicationController
  include ActionView::Helpers::TextHelper

  def create
    power = Power.find(params[:power_id])
    @briefcase.add_power(power.id)
    session[:briefcase] = @briefcase.contents
    flash[:notice] = "You now have #{pluralize(@briefcase.count_of(power.id), "#{power.title} power")}."
    redirect_to powers_path
  end

  def show
    @powers = @briefcase.powers
  end

  def update
    @power = Power.find(params[:power_id])
    @briefcase.contents.delete(params[:power_id].to_s)
    flash[:notice] = "Successfully removed #{view_context.link_to(@power.title, power_path(@power))} from your briefcase."
    redirect_back(fallback_location: "/briefcase")
  end

  def alter_quantity
    type = params[:type]
    if type == "increase"
      @briefcase.contents[(params[:power_id].to_s)] += 1
      redirect_back(fallback_location: "/briefcase")
    elsif type == "decrease"
      @briefcase.contents[(params[:power_id].to_s)] -= 1
      redirect_back(fallback_location: "/briefcase")
    else
      redirect_back(fallback_location: "/briefcase")
      flash[:notice] = "Minimum quantity is 1"
    end
    
    # type = params[:type]
    # @briefcase.briefcase_power.increase_or_decrease(type)
    # redirect_back(fallback_location: "/briefcase")
  end
end
