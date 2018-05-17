class CohortsController < ApplicationController


  def index
    @cohorts = Cohort.all.order("id ASC")
  end

  def show
    @cohorts = Cohort.find(params[:id])
    @students = @cohorts.students
  end

  def new
    @cohorts = Cohort.new
  end

  def create
  Cohort.create(cohort_params)
  redirect_to '/cohorts'
  end

  def edit
    @cohorts = Cohort.find(params[:id])
  end

  def update
    @cohorts = Cohort.find(params[:id])
    @cohorts.update(cohort_params)
    redirect_to '/cohorts'
  end

  def destroy
    Cohort.find(params[:id]).destroy
    redirect_to '/cohorts'
  end

  def datepicker_input form, field
    content_tag :td, :data => {:provide => 'datepicker', 'date-format' => 'yyyy-mm-dd', 'date-autoclose' => 'true'} do
      form.text_field field, class: 'form-control', placeholder: 'YYYY-MM-DD'
    end
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :age, :end_date, :course_id, :user_id)
  end


end
