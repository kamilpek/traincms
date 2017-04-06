class PagesController < ApplicationController
  def home
    @categories = Category.where("home_on = ?", true)
    @articles = Article.where(category_id:@categories)
    @articles = @articles.paginate(:page => params[:page], :per_page => 5)
    @tags = Tag.where("active = ?", true)
    @events = Event.where("active = ?", true)
  end

  def help
  end

  def about
  end
end
