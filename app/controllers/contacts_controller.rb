class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = "Dziekujemy za Twoja wiadomosc"
    else
      flash.now[:error] = "Nie mozna wyslac wiadomosci"
    end
  end
end
