class AddAdditionalInfoToTrips < ActiveRecord::Migration
  def change
  	add_column :trips, :additional_info, :string
  end
end
