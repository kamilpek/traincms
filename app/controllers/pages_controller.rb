class PagesController < ApplicationController
  def home
    @categories = Category.where("home_on = ?", true)
    @articles = Article.where(category_id:@categories)
    @articles = @articles.where(active:1)
    @articles = @articles.paginate(:page => params[:page], :per_page => 5)
    @tags = Tag.where("active = ?", true)
    @events = Event.where("active = ?", true)
  end

  def help
  end

  def about
  end

  def search
    @categories = Category.where("home_on = ?", true)
    @articles = Article.where(category_id:@categories)
    @articles = @articles.where(active:1)
    if params[:search].nil?
      @articles = @articles.where(id:0)
    else
      @articles = @articles.where(["lower(title) LIKE ?", "%#{params[:search].downcase}%"])
    end
  end
end
