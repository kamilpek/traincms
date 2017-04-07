class AdminController < ApplicationController
  before_filter :authenticate_user!

  def main
    @articles = Article.all
    @comments = Comment.all
  end

  def articles
    @articles = Article.all
    @articles = Article.paginate(:page => params[:page], :per_page => 10)
  end

  def categories
    @categories = Category.all
    @categories = Category.paginate(:page => params[:page], :per_page => 10)
  end

  def tags
    @tags = Tag.all
    @tags = Tag.paginate(:page => params[:page], :per_page => 10)
  end

  def menus
    @menus = Menu.all
    @menus = Menu.paginate(:page => params[:page], :per_page => 10)
  end

  def comments
    @comments = Comment.all
    @comments = Comment.paginate(:page => params[:page], :per_page => 10)
  end

  def users
    @users = User.all
    @users = User.paginate(:page => params[:page], :per_page => 10)
  end
end
