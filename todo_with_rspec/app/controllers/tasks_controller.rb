class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    respond_to do |format|
      if @task.save
        format.html { redirect_to task_path(@task) }
      else
        format.html { render :new }
      end
    end
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to task_path(@task) }
      else
        format.html { render :edit }
      end
    end
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
