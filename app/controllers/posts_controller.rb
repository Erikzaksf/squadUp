class PostsController < ApplicationController
  def index
    @posts = Post.all
    render :index
  end
  def show
    @post = Post.find(params[:id])
    render :show
  end
  def new
    @post = Post.new
    render :new
  end
  def create
    @post = Post.new (post_params)
    @post.user = current_user
    if @post.save
      flash[:notice] = "Post has been added."
      redirect_to posts_path
    else
      render :new
    end
  end
  def edit
    @post = Post.find(params[:id])
    render :edit
  end
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  private
  def post_params
    params.require(:post).permit(:user_id, :title, :category, :body, :image)
  end
end
