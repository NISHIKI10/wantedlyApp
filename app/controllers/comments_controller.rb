class CommentsController < ApplicationController
  def create
    if user_signed_in?
      post = Post.find(params[:post_id])
      @usercomment = post.comments.new(comment_params)
      @usercomment.user_id = current_user.id
      @usercomment.save
      redirect_to post_path(params[:post_id])
    else
      post = Post.find(params[:post_id])
      @companycomment = post.comments.new(comment_params)
      @companycomment.company_id = current_company.id
      @companycomment.save
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
