class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render :index
    end
  end

  def update
    @category = Category.find([:id])
    if @category.update(category_params)
      redirect_to categories_path
    else
      render :index
    end
  end


  private

  def category_params
    params.require(:category).permit(:category_name))
  end

end
