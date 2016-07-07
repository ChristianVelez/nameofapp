class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :nullactio_session instead.
  protect_from_forgery with: :exception

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(:from => @email,
        :to => 'your-email@example.com',
        :subject => "A new contact form message from #{@name}",
        :body => @message).deliver_now
  end
end
