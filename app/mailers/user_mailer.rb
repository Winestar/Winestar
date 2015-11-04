class UserMailer < ApplicationMailer
	default from: "sahash182@gmail.com.com"

	def welcome_email(user)
		@user = user
		mail(to: user.email, subject: 'Welcome!')
	end

end
 