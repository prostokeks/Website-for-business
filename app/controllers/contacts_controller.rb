class ContactsController < ApplicationController

  before_action :set_contact, only: %i[update destroy]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @contact.update(contact_params)
      redirect_to office_contacts_path
    else
      render "office/contacts/edit"
    end
  end

  def destroy
    @contact.destroy
    redirect_to office_contacts_path, status: :see_other
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :body, :email, :mobile, :status)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end
