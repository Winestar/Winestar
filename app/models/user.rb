class User < ActiveRecord::Base
	has_many :trips, dependent: :destroy
	has_many :userpicks
	has_many :likes, through: :userpicks, dependent: :destroy
	# has_and_belongs_to_many :likes, join_table: "likes_users", association_foreign_key: "like_id"
	has_secure_password
end
