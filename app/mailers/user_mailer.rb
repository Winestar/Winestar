class UserMailer < ApplicationMailer
	default :from => "example@example.com",
          :return_path => 'tlpride415@gmail.com'

  def welcome_email(user)
    @user = user
    mail(:to => user.email, :subject => "Thank you for signing up with Winestar!", :bcc => ['tlpride415@gmail.com'])
  end

end