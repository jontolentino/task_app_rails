class PagesController < ApplicationController
    before_action :authenticate_user!

    def index
        @categories = current_user.categories.all
        @category = Category.new
    end

    def new
        @category = Category.new(category_params)
        
        if @category.save
            # debugger
            redirect_to "/#{@category.slug}"
        else
            redirect_to root_path
        end
    end

    def delete
        @category = Category.find_by!(slug: params[:slug])
        @category.destroy
        redirect_to pages_index_path
    end

    def signup
    end

    private

    def category_params
        params.require(:category).permit(:name)
    end

end