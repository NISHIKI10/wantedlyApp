class CommentsController < ApplicationController
  def create
    Comment.create(user_id: current_user.id, post_id: params[:post_id], body: params[:body])
    redirect_to posts_path
  end

  def destroy
    Comment.destroy(id: params[:id])
    redirect_to post_path(params[:post_id])
  end
end
