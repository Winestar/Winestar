class DropLikesUsers < ActiveRecord::Migration
  def change
  	drop_table :likes_users
  end
end
