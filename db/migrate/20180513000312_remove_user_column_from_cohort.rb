class RemoveUserColumnFromCohort < ActiveRecord::Migration[5.2]
  def change
    remove_column :cohorts, :user_id, :integer

  end
end
