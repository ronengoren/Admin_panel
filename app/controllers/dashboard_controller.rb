class DashboardController < ApplicationController


  def index
    @tasks = Task.all
    @activities = PublicActivity::Activity.order("created_at desc").limit(4)


  end


  def new
    @tasks = Task.new
  end

  def show
    @tasks = Task.find(params[:id])
  end


  def edit
    @tasks = Task.find(params[:id])
  end

  def create
  Task.create(task_params)
  @tasks.user = current_user
  redirect_to '/dashboard'
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
    params.require(:task).permit(:name, :description, :term)
  end



end
