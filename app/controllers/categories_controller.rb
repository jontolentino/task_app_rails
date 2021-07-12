class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def show
        # if params[:slug] == "all"
        #     redirect_to root_path
        # else
            @show_category = Category.find_by({slug: params[:slug]})
        # end
    end
end