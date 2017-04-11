class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  # def show
  # end

end
