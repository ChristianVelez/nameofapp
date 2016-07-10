class UserMailer < ApplicationMailer
  default from: "john@example.com"

  def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email,
      :to => 'christian.velez1@gmail.com',
      :subject => "A new contact form message from #{@name}",
      :body => @message).deliver_now
end


def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'your-email@example.com',
        :subject => "A new contact form message from #{name}")
  end

end

