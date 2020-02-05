class PostsController < ApplicationController
  # before_action :authenticate_company!, except: [:index]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.company_id = current_company.id
    @post.save
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
    @post.company_id = current_company.id
  end
  
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = Comment.new
    @company = @post.company
  end

  private

    def post_params
      params.require(:post).permit(:image, :title, :content)
    end
  
end