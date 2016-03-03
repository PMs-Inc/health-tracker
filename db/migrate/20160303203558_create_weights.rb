class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.integer :date_id
      t.decimal :weight, precision: 5, scale: 2

      t.timestamps null: false
    end
  end
end
