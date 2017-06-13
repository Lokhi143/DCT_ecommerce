class SubCategoriesController < ApplicationController
  def index
    @sub_categories = SubCategory.all
  end
  def new
    @sub_category = SubCategory.new
  end
  def create
    @sub_category = SubCategory.new(params[:sub_category].permit(:name, :category_id))
    if @sub_category.save
      redirect_to sub_category_path(@sub_category.id),
        notice: "Successfully added!"
    else
      render action: "new"
    end
  end

  def show
    begin
      @sub_category = SubCategory.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to sub_categories_path, notice: "Record Not Found :-("
    end

  end
  def edit
    @sub_category = SubCategory.find(params[:id])
  end
  def update
    @sub_category = SubCategory.find(params[:id])
    if @sub_category.update_attributes(params[:sub_category].permit(:name,:category_id))
      redirect_to sub_category_path(@sub_category.id), notice: "Successfully updated!"
    else
      render action: "edit"
    end

  end
  def destroy
    @sub_category = SubCategory.find(params[:id])
    @sub_category.destroy
    redirect_to sub_categories_path, notice: "Successfully deleted!"

  end

end
