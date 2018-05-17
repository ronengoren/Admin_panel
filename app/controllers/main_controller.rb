class MainController < ApplicationController

  


def index

  
end


def search 
        @studentsquery = Student.ransack(first_name_or_last_name_cont: params[:q]).result(distinct: true)
        @cohortsquery = Cohort.ransack(name_cont: params[:q]).result(distinct: true)
        @coursesquery = Course.ransack(name_cont: params[:q]).result(distinct: true)
        @instructorsquery = Instructor.ransack(first_name_or_last_name_or_highest_education_cont: params[:q]).result(distinct: true)
        
        respond_to do |format| 
            format.html {}
            format.json {
                @studentsquery = @studentsquery.limit(5)
                @cohortsquery = @cohortsquery.limit(5)
                @coursesquery = @coursesquery.limit(5)
                @instructorsquery = @instructorsquery.limit(5)

        }
        end 
        
end 
    

end
