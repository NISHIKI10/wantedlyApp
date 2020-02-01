class PostsController < ApplicationController
  before_action :authenticate_company!, except: [:index] 

  # def index
  # end

  def new
    @post = Post.new
  end

  
end