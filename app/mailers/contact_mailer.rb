class ContactMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def new
    @contact = ContactMailer.new
  end
  
  def welcome_email(contact_params)
    binding.pry
    @name = contact_params[:name]
    @email = contact_params[:email]
    @message = contact_params[:message]
    binding.pry
    mail(to: "jeon.lisa@gmail.com", subject: "Message from www.lisajeon.com")
  end


end
