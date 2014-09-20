class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]

  def show
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def edit
    @post = Post.find(params[:post_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(create_params)
    @comment.post_id = @post.id

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: 'Comment was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @comment.update(update_params)
        format.html { redirect_to @comment.post, notice: 'Comment was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @post = @comment.post
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @post, notice: 'Comment was successfully destroyed.' }
    end
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def create_params
    params.require(:comment).permit(:name, :email, :text)
  end

  def update_params
    params.require(:comment).permit(:text)
  end
end
