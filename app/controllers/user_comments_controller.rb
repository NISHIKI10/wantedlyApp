class UserCommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    @usercomments = post.user_comments.new(comment_params)
    @usercomments.user_id = current_user.id
    @usercomments.save
    redirect_to post_path(params[:post_id])
  end

  private

  def comment_params
    params.require(:user_comment).permit(:body)
  end
  
end