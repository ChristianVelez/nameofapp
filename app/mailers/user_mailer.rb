class UserMailer < ApplicationMailer
  default from: "john@example.com"

  def thank_you
	  @name = params[:name]
	  @email = params[:email]
	  @message = params[:message]
	  UserMailer.contact_form(@email, @name, @message).deliver_now
  end

def contact_form(email, name, message)
  @message = message
  attachments.inline['bike_logo4.svg'] = File.read( Rails.root.join('app/assets/images/bike_logo4.svg'))
  attachments.inline['facebook.svg'] = File.read( Rails.root.join('app/assets/images/facebook.svg'))
  attachments.inline['twitter.svg'] = File.read(Rails.root.join('app/assets/images/twitter.svg'))
    mail(:from => email,
        :to => 'your-email@example.com',
        :subject => "A new contact form message from #{name}")
  end

end

