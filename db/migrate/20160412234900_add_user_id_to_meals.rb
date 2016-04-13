class AddUserIdToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :user_id, :integer
    add_column :steps, :user_id, :integer
    add_column :exercises, :user_id, :integer
    add_column :weights, :user_id, :integer

  end
end
