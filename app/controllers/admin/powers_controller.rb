class Admin::PowersController < Admin::BaseController

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)
  end

  private

  def power_params
    params.require(:power).permit(:title, :description, :price)
  end
end
