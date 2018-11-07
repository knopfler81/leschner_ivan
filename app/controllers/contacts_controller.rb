class ContactsController < ApplicationController
	
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if verify_recaptcha(model: @contact)
      if @contact.deliver
        flash.now[:notice] = "Email Sent"
        redirect_to root_path
      else
        flash.now[:error] = 'Cannot send message.'
        render :new
      end
    end
  end

  private
  def contact_params
  	params.require(:contact).permit(:email, :name, :message)
  end
end
