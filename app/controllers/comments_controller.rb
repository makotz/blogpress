class CommentsController < ApplicationController
  before_action :find_comment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user, except: [:index, :show]
  before_action :authorize_user, only: [:edit, :update, :destroy]

  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find params[:post_id]
    comment_params = params.require(:comment).permit(:body)
    @comment = Comment.new comment_params
    @comment.post_id = @post.id
    @comment.user = current_user
    if @comment.save
      redirect_to post_path(@post), notice: "Comment created!"
    else
      render "/posts/show", alert: "Comment not created!"
    end
  end

  def show
  end

  def index
    @comments = Comment.page params[:page]
  end

  def edit
  end

  def update
    if @comment.update comment_params
      redirect_to comment_path(@comment)
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to post_path(params[:post_id]), notice: "Comment deleted!"
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id, :user_id)
  end

  def find_comment
    @comment = Comment.find params[:id]
  end

  def authorize_user
    unless (can? :manage, @comment) || (can? :destroy, @comment)
      redirect_to root_path, alert: "access denied!"
    end
  end
end
