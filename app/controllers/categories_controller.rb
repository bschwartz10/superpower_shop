class CategoriesController < ApplicationController

  def items
    @categories = Category.all
  end


end
