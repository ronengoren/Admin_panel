class RemoveUserColumnFromCourse < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :user_id, :integer

  end
end
