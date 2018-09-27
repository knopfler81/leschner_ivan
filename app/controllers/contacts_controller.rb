class ContactsController < ApplicationController
	
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = "Email Sent"
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

  private
  def contact_params
  	params.require(:contact).permit(:email, :name, :message)
  end
end
