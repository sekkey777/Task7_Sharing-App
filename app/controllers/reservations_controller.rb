class ReservationsController < ApplicationController

  def index
    @reservations = current_user.reservations
  end

  def new
    @reservation = Reservation.new
    @room = Room.find(params[:id])
  end

  def confirm
    @reservation = Reservation.new(reservation_params)
    @room = Room.find(reservation_params[:room_id])
    
    # confirmアクション実行時にバリデーションチェックを実行したい
    # if @reservation.errors.full_messages.present?
    #   flash[:error] = @reservation.errors.full_messages
    #   redirect_to new_reservation_path(id: @room.id), flash: { error: @reservation.errors.full_messages }
    # end
  end

  def create
    @reservation = Reservation.new(reservation_params.merge(user_id: current_user.id))
    # binding.pry
    @room = Room.find(reservation_params[:room_id])
    if @reservation.save
      flash[:notice] = "ルームを予約しました"
      redirect_to rooms_path
    else
      redirect_to new_reservation_path(id: @room.id), flash: { error: @reservation.errors.full_messages }
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    flash[:notice] = '予約をキャンセルしました'
    redirect_to :reservations
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start, :end, :number_of_people, :room_id)
  end

end
