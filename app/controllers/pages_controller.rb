class PagesController < ApplicationController
  def home
    @articles = Article.all
    @articles = Article.paginate(:page => params[:page], :per_page => 5)
  end

  def help
  end

  def about
  end
end
