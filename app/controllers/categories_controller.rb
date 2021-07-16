class CategoriesController < ApplicationController
    before_action :authenticate_user!

    def index
        @categories = current_user.categories.all
    end

    def show
        # if params[:slug] == "all"
        #     redirect_to root_path
        # else
            @show_category = Category.find_by({slug: params[:slug]})
            # @taskes = @show_category.tasks.build
            # @show_category_new = Category.new
        # end
    end

    # def new
    #     @category = Category.new
    # end


end