class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:room_name, :room_introduction, :usage_fee, :address, :image))
    if @post.save
      flash[:notice] = "ルームを登録しました"
      redirect_to :posts
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = 'ルームを削除しました'
    redirect_to :posts
  end

  def home
    @posts = Post.all
  end

end
