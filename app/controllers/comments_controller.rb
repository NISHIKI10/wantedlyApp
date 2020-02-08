class CommentsController < ApplicationController
  def create
    if user_signed_in?
      post = Post.find(params[:post_id])
      @usercomments = post.comments.new(comment_params)
      @usercomments.user_id = current_user.id
      @usercomments.save
      redirect_to post_path(params[:post_id])
    else
      post = Post.find(params[:post_id])
      @companycomments = post.comments.new(comment_params)
      @companycomments.company_id = current_company.id
      @companycomments.save
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
