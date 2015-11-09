class User < ActiveRecord::Base
	has_many :trips, dependent: :destroy
	has_many :userpicks
	has_many :likes, through: :userpicks, dependent: :destroy
	# has_and_belongs_to_many :likes, join_table: "likes_users", association_foreign_key: "like_id"
  validates :first_name, :presence => true, length: { minimum: 2 }, :presence => {:message => "can't be empty"}
  	validates :password, length: { minimum: 6 }, on: :create, confirmation: true
  	validates :email,
 			   presence: true,
 			   uniqueness: true,
 			   format: {
 			     with: /@/,
 			     message: "not a valid format"
 			   }
	validates :phone_number,   :presence => {:message => 'ennter valid mobile number'},
                     :numericality => true,
                     :length => { :minimum => 10, :maximum => 15 }
	has_secure_password


end