class ChangeColumnNameOfStatusListToDescription < ActiveRecord::Migration
  def change
    remove_column :statuses, :list
    add_column :statuses, :description, :string
  end
end
