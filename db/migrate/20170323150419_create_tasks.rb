class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :action
      t.string :comment
      t.belongs_to :project, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :priority, index: true, foreign_key: true
      t.belongs_to :status, index: true, foreign_key: true

      t.timestamps
    end
  end
end
