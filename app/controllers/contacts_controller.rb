class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = "Dziękujemy za Twoją wiadomość"
    else
      flash.now[:error] = "Nie można wysłać wiadomości"
    end
  end
end
