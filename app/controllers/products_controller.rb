class ProductsController < ApplicationController
  def show
    render params[:view]
  end
end
