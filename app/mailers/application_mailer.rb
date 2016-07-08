class ApplicationMailer < ActionMailer::Base
  default from: "contact@bikebk.com"
  layout 'contact_form'
end
