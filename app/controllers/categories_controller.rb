class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def show
        # @show_category = Category.where({slug: params[:slug]})
        # puts params[:show_category][:slug]
        if params[:slug] == "all"
            redirect_to root_path
        else
            @show_category = Category.find_by({slug: params[:slug]})
            # byebug
        end
    end
end