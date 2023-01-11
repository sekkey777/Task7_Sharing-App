class ReservationsController < ApplicationController

  def index
    # @reservations = Reservation.all
    @reservations = current_user.reservations
    # binding.pry
    # @posts = Post.find(id: params[@reservations.post_id])
    # @posts = Post.find_by(id: params[:reservation][:post_id])
  end

  def new
    @reservation = Reservation.new
    @post = Post.find(params[:id])
  end

  def create
    # @post = Post.find(params[:reservation][:id])
    # binding.pry
    @reservation = Reservation.new(reservation_params.merge(user_id: current_user.id))
    if @reservation.save
      flash[:notice] = "ルームを予約しました"
      redirect_to :post
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
    params.require(:reservation).permit(:start, :end, :number_of_people, :reserver, :post_id)
  end

end
