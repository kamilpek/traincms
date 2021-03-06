class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
    @comments = @comments.paginate(:page => params[:page], :per_page => 20)
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    if !verify_recaptcha
     flash.delete :recaptcha_error
     build_resource(comment_params)
     resource.valid?
     resource.errors.add(:base, "Proszę zaznaczyć Captcha.")
     clean_up_passwords(resource)
     respond_with_navigational(resource) { render :new }
    else
      flash.delete :recaptcha_error
      super
    end
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to article_path(@comment.article_id), notice: "Dziękujemy za komentarz." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Zmodyfikowano komentarz.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Usunięto komentarz.' }
      format.json { head :no_content }
    end
  end

  def voteplus
    @comment = Comment.find(params[:id])
    comment = Comment.find(@comment.id)
    com = @comment.id.to_s
    body = ":voted_"
    @result = body + com
    if cookies[@result].nil?
      votes_p = Comment.where(id:@comment.id).pluck(:vote_plus).last
      votes_p = votes_p.to_i + 1
      comment.update_attribute(:vote_plus, votes_p)
      cookies[@result] = 1
      redirect_to article_path(@comment.article_id), notice: "Dziękujemy za ocenę."
    else
      redirect_to article_path(@comment.article_id), notice: "Już głosowałeś."
    end
  end

  def voteminus
    @comment = Comment.find(params[:id])
    comment = Comment.find(@comment.id)
    com = @comment.id.to_s
    body = ":voted_"
    @result = body + com
    if cookies[@result].nil?
      votes_m = Comment.where(id:@comment.id).pluck(:vote_minus).last
      votes_m = votes_m.to_i + 1
      comment.update_attribute(:vote_minus, votes_m)
      cookies[@result] = 1
      redirect_to article_path(@comment.article_id), notice: "Dziękujemy za ocenę."
    else
      redirect_to article_path(@comment.article_id), notice: "Już głosowałeś."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:article_id, :author, :content, :email, :ip, :longitude, :latitude)
    end
end
