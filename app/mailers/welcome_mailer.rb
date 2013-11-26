class WelcomeMailer < ActionMailer::Base
  default from: 'hello@jhola.com'
 
  def welcome_email(email_to)
    mail(to: email_to,
         subject: 'Welcome to My Awesome Site',
         template_name: 'welcome_email')
  end
end