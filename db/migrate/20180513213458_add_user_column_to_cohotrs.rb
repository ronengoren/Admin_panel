class AddUserColumnToCohotrs < ActiveRecord::Migration[5.2]
  def change
    add_column :cohorts, :user_id, :integer

  end
end
