class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :highest_education
      t.integer :cohort_id
      t.integer :course_id
    end
  end
end
