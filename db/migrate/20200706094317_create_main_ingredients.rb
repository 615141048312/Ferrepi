class CreateMainIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :main_ingredients do |t|
      t.string :food_name, null: false
      t.integer :food_group, null: false
      t.timestamps
    end
  end
end
