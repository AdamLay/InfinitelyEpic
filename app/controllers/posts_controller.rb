class PostsController < ApplicationController

  before_action :require_user, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def show

    # Find post by title (url param)
    @post = Post.find_by title: params[:id]

    unless @post
      render :file => "#{Rails.root}/public/404.html", :status => 404
    end

  end

  def new
    @post = Post.new
  end

  def create

    title = params[:post][:title]

    if Post.find_by title: title

    else
      post = Post.new post_params

      if post.save
        redirect_to '/posts/' + URI::escape(title)
      end
    end
  end

  def edit
    @post = Post.find_by title: params[:id]
  end

  def update

    title = params[:post][:title]

    post = Post.find_by title: title

    post.update post_params

    redirect_to '/posts/' + URI::escape(title)
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
