class PostsController < ApplicationController
  respond_to :html, :json, :xml

  def index
    @posts = Post.all
    @post_count = @posts.count
    respond_with @posts
  end

  def random(amount = 1)
    @posts = Post.limit(params[:amount] || amount).order('RANDOM()')
    respond_with @posts
  end

  def destroy(id)
    if (err = Post.find(id).delete)
      msg = 'Post succesfully deleted!'
    else
      msg = 'Post could not be deleted!'
    end
    if request.xhr?
      respond_with({post: {destroy: {msg: msg, success: err}}})
    else
      flash.alert msg
      render posts_path
    end
  end

end
