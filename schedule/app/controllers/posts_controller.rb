class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    
    if @post.save
      flash[:success] = "スケジュールを登録しました"
      redirect_to posts_path
    else
      flash.now[:failure] = "スケジュールを登録できませんでした"
      render 'new'
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    
    if @post.update(post_params)
      flash[:success] = "スケジュールを更新しました"
      redirect_to posts_path
    else
      flash[:failure] = "スケジュールを更新できませんでした"
      render 'edit'
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:delete] = "スケジュールを削除しました"
    redirect_to posts_path
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :start_at, :end_at, :all_day, :memo)
  end
end