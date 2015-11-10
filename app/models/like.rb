class Like < ActiveRecord::Base
	has_many :userpicks
	has_many :users, through: :userpicks
	# has_and_belongs_to_many :users, join_table: "likes_users", foreign_key: "like_id", association_foreign_key: "user_id"

 # :vineyard_tours, :cave_tours, :great_views, :food_pairing, :groups, :kid_friendly, :dog_friendly, :bachelorettes, :picnics, :staff_picks, :organic_wineries, :architectiure, :top_reds, :top_whites, :sparkling_wines, :dessert_wines, :presence => true

end
