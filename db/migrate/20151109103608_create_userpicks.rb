class CreateUserpicks < ActiveRecord::Migration
  def change
    create_table :userpicks do |t|
     t.integer :userpick, :like_id
     t.integer :userpick, :user_id
    end
  end
end
