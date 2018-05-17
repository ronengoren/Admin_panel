json.students do
    json.array!(@studentsquery) do |student|
      json.first_name student.first_name
      json.last_name student.last_name
      json.url student_path(student)
    end
  end
  
  json.cohorts do
    json.array!(@cohortsquery) do |cohort|
      json.name cohort.name
      json.url cohort_path(cohort)
    end
  end



  json.courses do
    json.array!(@coursesquery) do |course|
      json.name course.name
      json.url course_path(course)
    end
  end

  json.instructors do
    json.array!(@instructorsquery) do |instructor|
      json.first_name instructor.first_name
      json.last_name instructor.last_name
      json.url instructor_path(instructor)
    end
  end

