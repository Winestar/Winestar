class User < ActiveRecord::Base
	has_many :trips, dependent: :destroy
	has_many :userpicks
	has_many :likes, dependent: :destroy
	# has_and_belongs_to_many :likes, join_table: "likes_users", association_foreign_key: "like_id"

  	validates :first_name, :presence => true, length: { minimum: 2 }, :presence => {:message => "can't be empty"}, unless: :guest?
  	validates :password, length: { minimum: 6 }, on: :create, confirmation: true, unless: :guest?
  	validates :email,
 			   presence: true,
 			   uniqueness: true,
 			   format: {
 			     with: /@/,
 			     message: "not a valid format"
 			   }, unless: :guest?

	validates :phone_number,
			   :presence => {:message => 'ennter valid mobile number'},
                     :numericality => true,
                     :length => { :minimum => 10, :maximum => 15 }, unless: :guest?

	has_secure_password(validations: false)

	def self.new_guest
		new { |u| u.guest = true }
	end

	def move_to(user)
       likes.update_all(user_id: user.id)
    end


end