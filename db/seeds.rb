# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Cohort.create(name: 'cohort2015', start_date: Date.parse('1/1/2015'), end_date: Date.parse('31/12/2015'), course_id: 1)
# Cohort.create(name: 'cohort2016', start_date: Date.parse('1/1/2016'), end_date: Date.parse('31/12/2015'), course_id: 1)
#
#
# Instructor.create(first_name: 'Joe', last_name: 'Cohen', age: 27, salary: 65000, highest_education: "bachelor degree", course_id: 1)
# Instructor.create(first_name: 'Dave', last_name: 'Erlich', age: 31, salary: 69000, highest_education: "master degree", course_id: 2)
#
# Student.create(first_name: 'Robert', last_name: 'Michael', age: 22, highest_education: "high school degree", cohort_id: 1, course_id: 2)
# Student.create(first_name: 'William', last_name: 'David', age: 21, highest_education: "high school degree", cohort_id: 1, course_id: 2)
# Task.create(name: 'Ronen Goren', description: 'update david salary', completed: false, created_at: Date.today - rand(10).days, updated_at: Date.today - rand(10).days)

Course.create(name: 'Business', total_class_hour: 230, user_id: 1)
