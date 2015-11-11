class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
	t.string :email
	t.integer :amount
    t.timestamps null: false
    end
  end
end
