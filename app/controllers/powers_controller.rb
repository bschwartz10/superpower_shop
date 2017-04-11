class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
  end

  def destroy
    redirect_back(fallback_location: "/briefcase")
  end
end
