class PostsController < ApplicationController
  respond_to :html, :json, :xml

  def index
    @posts = Post.all
    @post_count = @posts.count
    respond_with @posts
  end

  def random(amount = 5)
    @posts = Post.random.limit(params[:amount] || amount)
    respond_with @posts
  end

  def destroy(id)
    post = Post.find id
    if (err = post.delete)
      msg = 'Post succesfully deleted!'
    else
      msg = 'Post could not be deleted!'
    end
    if request.xhr?
      respond_with object: post, action: :destroy, msg: msg, success: err
    else
      flash.alert msg
      render posts_path
    end
  end

  def create
    post = Post.new(post_params)
    if (err = post.save)
      msg = 'Post succesfully created!'
    else
      msg = 'Post could not be created!'
    end
    if request.xhr?
      respond_with object: post, action: :create, msg: msg, success: err
    else
      flash.alert msg
      render post
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
