class DashboardController < ApplicationController

  def index
    @tasks = Task.all
    @students = Student.all
    @cohorts = Cohort.all
    @courses = Course.all
    @instructors = Instructor.all
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
  redirect_to '/dashboard'
  end

  def update
    @tasks = Task.find(params[:id])
    @tasks.update(task_params)
    redirect_to '/dashboard'
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to '/dashboard'
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end

end
