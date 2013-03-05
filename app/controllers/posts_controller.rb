class PostsController < ApplicationController

  def index
      @posts = Post.all
  end

  def new
    @posts = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.valid?
      @post.save
      redirect_to posts_path
    else
      render :new  #render instead or redirect so that the data and errors are still there
end

end

end
