class QuestionController < ApplicationController
  def write
  end

  def create
    q = Question.new
    q.address = params[:input_address]
    q.title = params[:input_title]
    q.name = params[:input_name]
    q.content = params[:input_content]
    q.save
  end
  
  def login
    unless user_signed_in?
      redirect_to '/login'
    else
      redirect_to '/question/index'
    end
  end
  
  def index
    if current_user.email == 'admin@admin.com'
      redirect_to '/question/adminpage'
    end
    
    @qs = Question.where('address' => current_user.email)
    
  end

  def destroy
    @destroy_post = Question.find(params[:id])
    @destroy_post.destroy
  end

  def update
    @update_post = Question.find(params[:id])
    @update_post.title = params[:update_title]
    @update_post.name = params[:update_name]
    @update_post.content = params[:update_content]
    @update_post.save
  end

  def update_view
    @one_post = Question.find(params[:id])
  end
  
  def comment_create
    @comment = Comment.new(question_id: params[:question_id], content: params[:comment], nickname: params[:nickname])
    @comment.save
    redirect_to :back
  end
  
  def comment_destroy
    @destroy_comment = Comment.find(params[:comment_id])
    @destroy_comment.destroy
    redirect_to :back
  end
  
  def post
    @quest = Question.find(params[:id])
  end
  
  def adminpage
    unless current_user.email == 'admin@admin.com'
      redirect_to '/question/access_limit'
    end
    
    @qs = Question.all
    @user = User.all
  end
  
  def access_limit
  end
end
