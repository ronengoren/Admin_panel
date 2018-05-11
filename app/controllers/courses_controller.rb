class CoursesController < ApplicationController

  def index
    @courses = Course.all.order("id ASC")
  end

  def show
    @courses = Course.find(params[:id])
  end

  def new
    @courses = Course.new
  end

  def create
  Course.create(course_params)
  redirect_to '/courses'
  end

  def edit
    @courses = Course.find(params[:id])
  end

  def update
    @courses = Course.find(params[:id])
    @courses.update(course_params)
    redirect_to '/courses'
  end

  def destroy
    Instructor.find(params[:id]).destroy
    redirect_to '/courses'
  end

  private

  def course_params
    params.require(:course).permit(:name, :total_class_hour)
  end





end
