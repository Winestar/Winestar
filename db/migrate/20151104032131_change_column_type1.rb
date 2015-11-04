class ChangeColumnType1 < ActiveRecord::Migration
  def change
  	change_column :trips, :available_now, 'boolean USING CAST(available_now AS boolean)'
  	change_column :trips, :price_range, 'integer USING CAST(price_range AS integer)'
  	change_column :trips, :arrival_date, 'date USING CAST(arrival_date AS date)'
  	change_column :trips, :departure_date, 'date USING CAST(departure_date AS date)'
  end
end
