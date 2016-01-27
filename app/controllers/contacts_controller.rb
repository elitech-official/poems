class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Спасибо, ваше сообщение было отправлено!'
    else
      flash.now[:error] = 'Невозможно отправить сообщение!'
      render :new
    end
  end
  
  private
  def contact_params
    params.require(:contact).permit(:name, :nickname, :message, :email)
  end
end