class PostsController < ApplicationController
  before_action :authenticate_company!, except: [:index] 

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

  private

    def post_params
      params.require(:post).permit(:image, :title, :content)
    end
  
end