class PostCommentsController < ApplicationController
  before_action :authenticate_user!,except: [:show]
  
  def create
    @customer = Customer.find(params[:customer_id])
    @comment = current_user.post_comments.new(post_comment_params)
    @comment.customer_id = customer.id
    @comment.save
    redirect_to customer_path(customer)
  end

  def show
    @comment = PostComment.find(params[:id])
  end

  def edit
    @comment = PostComment.find(params[:id])
  end

  def update
    @comment = PostComment.find(params[:id])
    @comment.update(post_comment_params)
    redirect_to customer_path(customer)
  end

  def destroy
    @comment = PostComment.find_by(id: params[:id]).destroy
    redirect_to customer_path(params[:customer_id])
  end

  def post_comment_params
    params.require(:post_comment).permit(:comment, :method, :target, :status)
  end
end
