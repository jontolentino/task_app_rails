class ApplicationController < ActionController::Base
    before_action :set_page
    before_action :authenticate_user!

    def set_page
        @categories = Category.all
      end
end

