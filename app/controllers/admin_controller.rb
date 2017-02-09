class AdminController < ApplicationController
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
  end

  def menus
  end

  def comments
    @comments = Comment.all
    @comments = Comment.paginate(:page => params[:page], :per_page => 10)
  end

  def statistics
  end
end
