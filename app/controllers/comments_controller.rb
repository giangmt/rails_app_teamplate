class CommentsController < ApplicationController
  def create
    @post     = Post.find(params['post_id'])
    @comment  = post.build_comment('body' => params['body'], 'author' => params['author'])
    if @comment.save
      redirect_to posts_path(@posts.id)
    else
      render 'posts/show',
    end
  end

  def destroy
    post = Post.find params[:post_id]
    post.delete_comment params[:comment_id]
    redirect_to posts_path(@posts.id)
  end
end