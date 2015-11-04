class ChangeColumnType < ActiveRecord::Migration
  def change
  	change_column :trips, :number_of_people, 'integer USING CAST(number_of_people AS integer)'
  end
end
