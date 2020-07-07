class CreateInstractions < ActiveRecord::Migration[5.2]
  def change
    create_table :instractions do |t|
      t.references :recipe, foreign_key: true
      t.integer :order, null: false
      t.text :procedure, null: false
      t.timestamps
    end
  end
end
