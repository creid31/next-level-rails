class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.create(task_params)
    redirect_to @task
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    # byebug
    @task = Task.find(params[:id])
    redirect_to @task
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to @task
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:name, :priority, :user)
  end
end
