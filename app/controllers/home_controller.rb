class HomeController < ApplicationController
  def index
    @posts = Post.all
  end
  def write
    a = Post.new
    a.title = params[:tt]
    a.content = params[:ct]
    a.save
    redirect_to "/home/index"
  end
  
  def delete
    #deleting_post = Post.find(params[::number])
    deleting_post = Post.where(:id=>params[:number]).take
    deleting_post.delete
    redirect_to "/home/index"
  end
  
  def modify
    @post = Post.find(params[:id])
  end
  
  def update
    updating_post = Post.find(params[:id])
    updating_post.title = params[:m_title]
    updating_post.content = params[:m_content]
    updating_post.save
    redirect_to "/home/index"
  end
end
