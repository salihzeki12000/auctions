class UserMailer < ApplicationMailer

  def activation_needed_email(user)
    @user = user
    @url = activate_user_url(user.activation_code)
    mail(to: user.email, subject: "Welcome to Room Auctions Site")
  end

  def activation_success_email(user)
    @user = user
    @url = login_url
    mail(to: user.email, subject: "Your account is now activated")
  end

  def reset_password_email(user)
    @user = user
    @url = edit_password_user_url(user.reset_password_token)
    mail(to: user.email, subject: "Your password reset request")
  end
end
