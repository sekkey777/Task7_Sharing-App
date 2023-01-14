class UsersController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]

  def index
    @users = User.all
  end

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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_edit_params)
      flash[:notice] = 'アカウントを更新しました'
      redirect_to user_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = 'ユーザーを削除しました'
    redirect_to :users
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def user_edit_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :introduction)
  end

end
