class User < ActiveRecord::Base
	# has_many :trips, dependent: :destroy
	# has_one :like, dependent: :destroy
	has_secure_password

  
end
