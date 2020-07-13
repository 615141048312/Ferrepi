# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# メイン食材
  [
    ['高野豆腐', 0],
    ['ほうれん草', 1],
    ['アサリ', 2],
    ['牛・ひき肉', 3],
    ['鶏卵（全卵）', 4],
  ].each do |name, group|
    MainIngredient.create!(
        { food_name: name, food_group: group}
      )
  end
