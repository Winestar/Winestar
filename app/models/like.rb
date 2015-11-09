class Like < ActiveRecord::Base
	has_many :userpicks
	has_many :users, through: :userpicks
	# has_and_belongs_to_many :users, join_table: "likes_users", foreign_key: "like_id", association_foreign_key: "user_id"
end
