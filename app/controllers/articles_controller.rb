class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:show, :print_article, :print_article_comments]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
    @articles = @articles.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ArticleOnePdf.new(@article)
        send_data pdf.render, filename: "article_#{@article.id}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
    @comments = Comment.all
    @tag_refs = TagRef.all
    visited
  end

  def print_article
    @article = Article.find(params[:id])
  end

  def print_article_comments
    @article = Article.find(params[:id])
    @comments = Comment.all
  end

  def article_tags
    @article = Article.find(params[:id])
    @tags = Tag.all
    @tag_refs = TagRef.all
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Dodano artykuł.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Zmodyfikowano artykuł.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Usunięto artykuł.' }
      format.json { head :no_content }
    end
  end

  def visited
    @counter = Article.where(id:@article.id).pluck(:visit).last
    @counter = @counter + 1
    Article.update(@article.id, :visit => @counter)
  end

  def activating
    @article = Article.find(params[:id])
    article = Article.find(@article.id)
    if @article.active == false
      article.update_attribute(:active, true)
    else
      article.update_attribute(:active, false)
    end
    redirect_to articles_path, notice: "Zakutalizowano status artykułu."
  end

  def highlighting
    @article = Article.find(params[:id])
    article = Article.find(@article.id)
    if @article.highlight == false
      article.update_attribute(:highlight, true)
    else
      article.update_attribute(:highlight, false)
    end
    redirect_to articles_path, notice: "Zakutalizowano status artykułu."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :category_id, :active, :intro, :content, :visit, :highlight, :user_id, :image, :comments_on)
    end
end
