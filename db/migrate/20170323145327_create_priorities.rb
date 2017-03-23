class CreatePriorities < ActiveRecord::Migration
  def change
    create_table :priorities do |t|
      t.string :order

      t.timestamps null: false
    end
  end
end
