class ContactMailer < ApplicationMailer
  default to: "katie.wood6319@hotmail.com"

  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message

    mail(subject: "New Contact Form Message")
  end
end
