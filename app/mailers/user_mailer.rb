class UserMailer < ActionMailer::Base

  def welcome(user)
    mail to: user.email, from: "app@example.com", subject: "Test"
  end

end
