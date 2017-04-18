class Admin::PowersController < Admin::BaseController

  def new
    @category = Category.all
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)
    if @power.save
      flash[:success] = "Power #{@power.title} Created Successfully!"
      redirect_to power_path(@power)
    else
      flash[:danger] = "Could not create power because #{@power.errors.full_messages.join(", ")}"
      render :new
    end
  end

  private

  def power_params
    params.require(:power).permit(:title, :description, :price, :image, :category_id)
  end
end
