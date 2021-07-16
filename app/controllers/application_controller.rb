class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :set_page
    
    # before_action :set_user

    def set_page
        # byebug
        
        if current_user
          @categories = current_user.categories.all()
        else
          @categories = Category.all()
        end
        #   redirect_to root_path
        # end
    end

    # private
    
    # def set_user
    #   @user = User.find(current_user.id)
    #   # @user = current_user
    # end
end

