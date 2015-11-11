class UserMailer < ApplicationMailer
	default :from => "example@example.com",
          :return_path => 'tlpride415@gmail.com'

   # welcome_email       
  def welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Thank you for signing up with Winestar!", :bcc => ['tlpride415@gmail.com', 'Julie.Vaughn@gmail.com', 'joeruef@gmail.com', 'kshah3@babson.edu', 'leogarver@gmail.com'])
  end

  # like email
  def like_email(like)
    @like = like
    mail(:to => 'rnchau@mail.sfsu.edu', 
    	:subject => "4 likes of the user with user id!", :bcc => ['tlpride415@gmail.com', 'Julie.Vaughn@gmail.com', 'joeruef@gmail.com', 'kshah3@babson.edu', 'leogarver@gmail.com'])
  end

  # like email
  def trip_email(trip)
    @trip = trip
    mail(:to => 'rnchau@mail.sfsu.edu', 
    	:subject => "Trip Information of the user with user id!", :bcc => ['tlpride415@gmail.com', 'Julie.Vaughn@gmail.com', 'joeruef@gmail.com', 'kshah3@babson.edu', 'leogarver@gmail.com'])
  end

 

end
