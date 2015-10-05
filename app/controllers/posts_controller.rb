class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show

    # Find post by title (url param)
    @post = Post.find_by title: params[:id]

    unless @post
      render :file => "#{Rails.root}/public/404.html",  :status => 404
    end

  end

end
