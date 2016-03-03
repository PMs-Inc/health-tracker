class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :date_id
      t.integer :step_count

      t.timestamps null: false
    end
  end
end
