class CompanyCommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    @companycomments = post.company_comments.new(comment_params)
    @companycomments.company_id = current_company.id
    @companycomments.save
    redirect_to post_path(params[:post_id])
  end

  private

  def comment_params
    params.require(:company_comment).permit(:body)
  end
  
end