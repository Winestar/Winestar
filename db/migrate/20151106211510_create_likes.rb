class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :vineyard_tours
      t.string :cave_tours
      t.string :great_views
      t.string :food_pairing
      t.string :groups
      t.string :kid_friendly
      t.string :dog_friendly
      t.string :bachelorettes
      t.string :picnics
      t.string :staff_picks
      t.string :organic_wineries
      t.string :architecture
      t.string :top_reds
      t.string :top_whites
      t.string :sparkling_wines
      t.string :dessert_wines

      t.timestamps null: false
    end
  end
end
