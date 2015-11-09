class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :available_now
      t.string :arrival_date
      t.string :departure_date
      t.string :number_of_people
      t.string :start_location
      t.string :end_location
      t.string :price_range
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
