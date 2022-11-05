class Office::ContactsController < OfficeController

  before_action :set_contact, only: %i[show edit destroy]

  def index
    @contacts = Contact.order(created_at: :desc)
  end

  def show
  end

  def edit
  end

  def destroy
    @contact.destroy
    redirect_to office_contacts_path, status: :see_other, notice: "Contact was successfully destroyed."
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :body, :email, :mobile, :status)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end
