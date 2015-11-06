class ChangeUserColumnPhone < ActiveRecord::Migration
  def change
  	change_column :users, :phone_number, 'varchar(12) USING CAST(phone_number AS varchar(12))'
  end
end
