class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "アカウントを登録しました"
      redirect_to :posts
    else
      render :new
    end
  end

  # ログイン機能実装後に実装（セッションにidを持たせるため）
  def show
    @user = User.find(params[:id])
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
