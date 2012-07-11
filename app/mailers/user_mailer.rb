class UserMailer < ActionMailer::Base
  default from: "info@makeanywish.com"

   def welcome_email(user)
	    @user = user
	    @url  = "http://makeanywishes.com/"
	    mail(:to => user.email, :subject => "Welcome to Make Any Wishes.")
   end

end
