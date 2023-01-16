class PostsController < ApplicationController
  def top
    @q = Post.ransack(params[:q])
    @posts = @q.result
    @posts = Post.all
  end

  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result
    @count = @posts.count
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params.merge(user_id: current_user.id))
    if @post.save
      flash[:notice] = "ルームを登録しました"
      redirect_to :posts
    end
  end

  def show
  end

  def edit
    @post = Post.find(params[:id])
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
    @posts = current_user.posts
  end

  def search
    
  end

  private

  def post_params
    params.require(:post).permit(:room_name, :room_introduction, :usage_fee, :address, :image)
  end

end
