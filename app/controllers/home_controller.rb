class HomeController < ApplicationController
  def index
    @posts = Post.where(:is_active => true).order('created_at DESC')
  end
end
