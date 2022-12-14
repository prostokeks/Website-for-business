class Office::UsersController < OfficeController

  def show
    @user = User.find(params[:id])
    @users = User.all_except(current_user)

    @room = Room.new
    @rooms = Room.public_rooms
    @room_name = get_name(@user, current_user)

    @single_room = Room.where(name: @room_name).first || Room.create_private_room([@user, current_user], @room_name)

    @message = Message.new
    @messages = @single_room.messages.order(create_at: :asc)

    render "office/rooms/index"
  end

  def profile
    @user = User.find(params[:id])
  end

  def salary
    @user = User.find(params[:id])
    @months = Month.all
    @year = Year.find(params[:year_id])
    @salaries = Salary.all
    @invoices = Invoice.all
  end

  private

  def get_name(user1, user2)
    user = [user1, user2].sort
    "private_#{user[0].id}_#{user[1].id}"
  end
end
