class CommentsController < ApplicationController
  def create
    if user_signed_in?
      Comment.create(user_id: current_user.id, post_id: params[:post_id], body: params[:body])
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

end
