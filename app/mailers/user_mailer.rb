class UserMailer < ApplicationMailer
	default :from => "example@example.com",
          :return_path => 'tlpride415@gmail.com'

  def welcome_email(user)
    @user = user
    mail(:to => user.email, :subject => "Thank you for signing up with Winestar!", :bcc => ['tlpride415@gmail.com', 'Julie.Vaughn@gmail.com', 'joeruef@gmail.com', 'kshah3@babson.edu', 'leogarver@gmail.com'])
  end

  def like_email(like)
    @like = like
    mail(:to => "rnchua@mail.sfsu.edu", :subject => "Like Information!")
  end


end
