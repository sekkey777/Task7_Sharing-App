class ReservationsController < ApplicationController

  def index
    @reservations = current_user.reservations
  end

  def new
    @reservation = Reservation.new
    @post = Post.find(params[:id])
  end

  def confirm
    @reservation = Reservation.new(reservation_params)
    @post = Post.find(reservation_params[:post_id])
  end

  def create
    @reservation = Reservation.new(reservation_params.merge(user_id: current_user.id))
    @post = Post.find(reservation_params[:post_id])
    if @reservation.save
      flash[:notice] = "ルームを予約しました"
      redirect_to posts_path
    else
      redirect_to new_reservation_path(id: @post.id), flash: { error: @reservation.errors.full_messages }
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
    params.require(:reservation).permit(:start, :end, :number_of_people, :post_id)
  end

end
