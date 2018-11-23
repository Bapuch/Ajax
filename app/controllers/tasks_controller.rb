class TasksController < ApplicationController
before_action :authenticate_user!
  def new
    @categories = Category.all
  end

  def create
    @task = Task.new(task_params)
    @category = Category.find(category_params)
    @task.category = @category
    if @task.save
      respond_to do |f|
        f.html {redirect_to home_path, notice: "Task succesfully created"}
        f.js
      end
    else
      respond_to do |f|
        f.html {redirect_to home_path, notice: "Something went wrong"}
        f.js
      end
    end
  end

  def edit

    @task = Task.find(params[:id])
    @categories = Category.all
    unless params.nil?
      @task.update(status: !@task.status)
      @task.save
      respond_to do |f|
        f.html {redirect_to home_path}
        f.js
      end
    end
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
    flash[:notice] = "Task edited"
  end

  def index
    @tasks = Task.all
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    respond_to do |f|
      f.html {redirect_to home_path}
      f.js
    end
  end


  private

  def task_params
    params.require(:task).permit(:title, :deadline, :description)
  end

  def category_params
    params.require(:task).require(:Category)
  end

end
