class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.references :main_ingredient, foreign_key: true
      t.references :user, foreign_key: true
      t.string :recipe_name, null: false
      t.integer :recipe_image_id
      t.text :caption, null: false
      t.integer :category, null: false
      t.integer :time_required, null: false
      t.float :how_many_serving, null: false
      t.timestamps
    end
  end
end
