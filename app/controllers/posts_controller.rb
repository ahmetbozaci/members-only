# frozen_string_literal: true

class PostsController < ApplicationController

  before_action :authenticate_user!, only: %i[new create]

  def index
    @post = Post.all
  end

  def new
    @post = current_user.posts.build
  end
  
  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to posts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end
