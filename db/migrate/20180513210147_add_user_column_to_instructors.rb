class AddUserColumnToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :user_id, :integer

  end
end
