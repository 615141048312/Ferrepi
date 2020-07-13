class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id, foreign_key: true
      t.string :ingredient, null: false
      t.string :amount, null: false
      t.timestamps
    end
  end
end
