class CreateJoinTableForLikesUsers < ActiveRecord::Migration
  def change
  	create_table :likes_users, id: false do |t|
  		t.belongs_to :like
  		t.belongs_to :user
  	end
  end
end
