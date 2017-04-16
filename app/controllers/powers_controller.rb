class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def destroy
    redirect_back(fallback_location: "/briefcase")
  end
end
