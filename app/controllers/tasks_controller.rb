class TasksController < ApplicationController
    before_action :set_post,

    def show_id
        # @category = Category.find_by(slug: params[:slug])
        @task = @category.tasks.find_by(id: params[:id])
    end

    def update
        @task = @category.tasks.find_by(id: params[:id])
        @task.update(post_params)
        redirect_to tasks_show_id_path(params[:slug], params[:id])
    end

    def delete
        @task = @category.tasks.find_by(id: params[:id])
        @task.destroy
        redirect_to categories_show_path(params[:slug])
    end

    private
    
    def set_post
        @category = Category.find_by(slug: params[:slug])
    end 

    def post_params
        params.require(:task).permit(:name, :content)
    end
end