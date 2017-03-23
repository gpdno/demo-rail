class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :list

      t.timestamps null: false
    end
  end
end
