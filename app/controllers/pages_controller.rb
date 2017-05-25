class PagesController < ApplicationController
  def home
    if params[:user].nil?
      @articles = Article.all
    else
      @articles = Article.where("user_id = ?", params[:user])
    end
    @categories = Category.where("home_on = ?", true)
    @articles = @articles.where(category_id:@categories)
    @articles = @articles.where(active:1)
    @articles = @articles.paginate(:page => params[:page], :per_page => 5)
    @tags = Tag.where("active = ?", true)
    @events = Event.where("active = ?", true)
    @components = Component.where("active = ?", true)
    if Bookmark.where(home:true).count == 1
      @bookmark = Bookmark.where(home:true).last
    end
  end

  def help
  end

  def about
  end

  def statistics
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
