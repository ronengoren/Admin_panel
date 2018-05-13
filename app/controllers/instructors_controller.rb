class InstructorsController < ApplicationController

  def index
    @instructors = Instructor.all.order("id ASC")
  end

  def show
    @instructors = Instructor.find(params[:id])
  end

  def new
    @instructors = Instructor.new
  end

  def create
  Instructor.create(instructor_params)
  redirect_to '/instructors'
  end

  def edit
    @instructors = Instructor.find(params[:id])
  end

  def update
    @instructors = Instructor.find(params[:id])
    @instructors.update(instructor_params)
    redirect_to '/instructors'
  end

  def destroy
    Instructor.find(params[:id]).destroy
    redirect_to '/instructors'
  end

  private

  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :age, :salary, :highest_education, :course_id, :user_id)
  end




end
