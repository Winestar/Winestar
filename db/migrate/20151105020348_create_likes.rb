class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :tours
      t.string :red_wines
      t.string :white_wines

      t.timestamps null: false
    end
  end
end
