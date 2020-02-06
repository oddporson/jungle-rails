class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD']

  def index
    @category = Category.order(id: :desc).all
  end

  def create
  end

  def new
  end

  def destroy
  end
  
end

