class StudentsController < ApplicationController



def index

  @students = Student.all.order("id ASC")

end

def show
  @students = Student.find(params[:id])
end

def new
  @students = Student.new
end

def create
Student.create(student_params)
redirect_to '/students'
end

def edit
  @students = Student.find(params[:id])
end

def update
  @students = Student.find(params[:id])
  @students.update(student_params)
  redirect_to '/students'

    end

def destroy
  Student.find(params[:id]).destroy
  redirect_to '/students'
end

private

def student_params
  params.require(:student).permit(:first_name, :last_name, :age, :highest_education, :cohort_id, :course_id)
end



end
