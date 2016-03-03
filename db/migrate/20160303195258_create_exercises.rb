class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :exercise_type_id
      t.integer :date_id
      t.decimal :duration, precision: 5, scale: 2

      t.timestamps null: false
    end
  end
end
