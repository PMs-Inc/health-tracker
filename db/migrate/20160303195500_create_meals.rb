class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :calories
      t.string :description
      t.integer :date_id

      t.timestamps null: false
    end
  end
end
