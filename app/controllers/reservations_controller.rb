class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:start, :end, :number_of_people, :reserver))
    if @reservation.save
      flash[:notice] = "ルームを予約しました"
      redirect_to :home
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

end
