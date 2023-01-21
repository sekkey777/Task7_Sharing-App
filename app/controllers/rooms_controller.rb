class RoomsController < ApplicationController
  def top
    @q = Room.ransack(params[:q])
    @rooms = @q.result
    @rooms = Room.all
  end

  def index
    @q = Room.ransack(params[:q])
    @rooms = @q.result
    @count = @rooms.count
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params.merge(user_id: current_user.id))
    if @room.save
      flash[:notice] = "ルームを登録しました"
      redirect_to :rooms
    end
  end

  def show
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    flash[:notice] = 'ルームを削除しました'
    redirect_to :rooms
  end

  def home
    @rooms = current_user.rooms
  end

  def search
    
  end

  private

  def room_params
    params.require(:room).permit(:room_name, :room_introduction, :usage_fee, :address, :image)
  end

end
