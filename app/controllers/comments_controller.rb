class CommentsController < ApplicationController
	before_action :authenticate_user!



  def index
  	@comments = current_user.comments
  	@comments = Comment.all
  end

  def new
  	@comment = Comment.new
  end

  def create
  	@comment = Comment.new(comment_params.merge(user_id:current_user.id))

  	if @comment.save
  		redirect_to comments_path
  	else
  		render :new
  	end
  end

  def edit
  	@comment = Comment.find(params[:id])
  end

  def update
  	@comment = Comment.find(params[:id])

  	if @comment.update_attributes(comment_params)
  		redirect_to comments_path
  	else
  		render :edit
  	end
  end




  private

  def comment_params
  	params.require(:comment).permit(:body)
  end





end
