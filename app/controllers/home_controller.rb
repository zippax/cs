class HomeController < ApplicationController
  def index
    @categories = Category.where(parent_id: nil)
  end
end
