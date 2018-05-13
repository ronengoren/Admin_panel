class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
  Task.create(task_params)
  redirect_to '/dashboard'
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def update
    @tasks = Task.find(params[:id])
    @tasks.update(task_params)
    redirect_to '/dashboard'
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to dashboard_url
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :completed)
  end

end
