class UserMailer < ApplicationMailer
	default from: "contact@bikebk.herokuapp.com"

	def contact_form(email, name, message)
  	@message = message
    mail(:from => email,
        :to => 'christian.velez1@gmail.com',
        :subject => "A new contact form message from #{name}").deliver_now do | format |
  		format.html { render layout: 'contact_form.html.erb' }
  	end
  end
end
