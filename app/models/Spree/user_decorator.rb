Spree::User.class_eval do
   after_create :send_signup_email
   
  def send_signup_email
    # call your mailer here
    puts "Doing something"
    
  end
end