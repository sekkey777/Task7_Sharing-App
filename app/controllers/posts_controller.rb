class PostsController < ApplicationController
  # def index
  #   @posts = current_user.posts
  #   @posts = Post.all
  # end

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

  # def home
  #   @q = Post.ransack(params[:q])
  #   @posts = @q.result
  # end

  def search
    
  end

  private

  def post_params
    params.require(:post).permit(:room_name, :room_introduction, :usage_fee, :address, :image)
  end

end
