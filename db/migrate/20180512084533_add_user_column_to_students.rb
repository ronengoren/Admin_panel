class AddUserColumnToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :user_id, :integer
  end
end
