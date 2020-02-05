class CommentsController < ApplicationController
  def create
    if user_signed_in?
      post = Post.find(params[:post_id])
      @comment = post.comments.new(comment_params)
      @comment.user_id = current_user.id
      @comment.save
      redirect_to post_path(params[:post_id])
    else
      Comment.create(company_id: current_company.id, post_id: params[:post_id], body: params[:body])
      redirect_to post_path(params[:post_id])
    end
  end

  def destroy
    Comment.destroy(id: params[:id])
    redirect_to post_path(params[:post_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
