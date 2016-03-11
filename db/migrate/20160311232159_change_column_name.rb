class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :boats, :profile_id, :user_id
  end
end
