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
    mail(:from => email,
        :to => 'your-email@example.com',
        :subject => "A new contact form message from #{name}") do |format|
               format.html { render 'contact_form' }
               format.text { render :text => 'mailer.txt.erb' }
             end
  end

end

