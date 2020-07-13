class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :main_ingredient_id, foreign_key: true
      t.integer :user_id, foreign_key: true
      t.string :recipe_name, null: false
      t.string :recipe_image_id
      t.text :caption
      t.integer :category, null: false
      t.integer :time_required, null: false
      t.float :how_many_serving, null: false
      t.timestamps
    end
  end
end
