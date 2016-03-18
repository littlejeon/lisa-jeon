class ContactMailer < ApplicationMailer

  def new
    @contact = ContactMailer.new
  end
  
  def welcome_email(contact_params)
    @name = contact_params[:name]
    @email = contact_params[:email]
    @message = contact_params[:message]
    mail(to: "jeon.lisa@gmail.com", subject: "Message from www.lisajeon.com")
  end


end
