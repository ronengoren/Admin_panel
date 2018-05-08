class DashboardController < ApplicationController



  def index
    @tasks = Task.all
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
    @tasks = Task.find(params[:id])
    @tasks.destroy
    redirect_to '/dashboard'
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end

end
