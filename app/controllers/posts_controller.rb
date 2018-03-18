class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to @post, notice: "Picture posted successfully"
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Post successfully updated"
    else
      render :edit
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:caption)
  end

end
