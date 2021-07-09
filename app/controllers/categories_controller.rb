class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def show
        @categories = Category.where({slug: params[:slug]})
    end
end