class CreateRecentActivityList < ActiveRecord::Migration[5.2]
  def change
    create_table :recent_activity_lists do |t|
      t.integer :cohort_id
      t.integer :course_id
      t.integer :student_id
      t.integer :instructor_id

    end
  end
end
