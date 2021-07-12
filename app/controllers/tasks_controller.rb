class TasksController < ApplicationController
    
    def show_id
        # @show_category = Category.find_by({slug: params[:slug]})
        # @task = Category.find_by({slug: params[:slug]})

        # puts params[:slug]
        # puts params[:id]

        @category = Category.find_by(slug: params[:slug])
        @task = @category.tasks.find_by(id: params[:id])
        
    end
end