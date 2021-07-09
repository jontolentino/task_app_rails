class ApplicationController < ActionController::Base
    before_action :set_page
    
    def set_page
        @categories = Category.all
      end
end
