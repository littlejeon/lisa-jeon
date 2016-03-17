class ContactsController < ApplicationController
  skip_before_action :authorize, only: [:new, :create, :index]

  def index
  end 

  def new
    @contact = Contact.new
  end

  def create
    puts "I'm in the create method"
    @contact = Contact.new(contact_params)
    puts "I have access to the params"
    ContactMailer.welcome_email(contact_params).deliver_now
    puts "I tried to deliver the email"
    redirect_to new_contact_path
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end


end
