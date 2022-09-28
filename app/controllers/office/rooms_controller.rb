class Office::RoomsController < OfficeController

  before_action :authenticate_user!

  def index
    @room = Room.new
    @rooms = Room.public_rooms
    @users = User.all_except(current_user)

    render "index"
  end

  def show
    @single_room = Room.find(params[:id])
    @room = Room.new
    @rooms = Room.public_rooms
    @users = User.all_except(current_user)
    @message = Message.new
    @messages = @single_room.messages.order(create_at: :asc)

    render "index"
  end

end