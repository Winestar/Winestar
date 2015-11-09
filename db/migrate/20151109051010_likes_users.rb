class LikesUsers < ActiveRecord::Migration
  def change
  	create_table :likes_users, :id => false do |t|
  		t.integer :like_id
  		t.integer :user_id
  	end
  end
end
