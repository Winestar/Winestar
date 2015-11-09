class User < ActiveRecord::Base
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