class TagRefsController < ApplicationController
  before_action :set_tag_ref, only: [:show, :edit, :update, :destroy]

  # GET /tag_refs
  # GET /tag_refs.json
  def index
    @tag_refs = TagRef.all
  end

  # GET /tag_refs/1
  # GET /tag_refs/1.json
  def show
  end

  # GET /tag_refs/new
  def new
    @tag_ref = TagRef.new
  end

  # GET /tag_refs/1/edit
  def edit
  end

  # POST /tag_refs
  # POST /tag_refs.json
  def create
    @tag_ref = TagRef.new(tag_ref_params)
    @article = Article.find(params[:article])

    respond_to do |format|
      if @tag_ref.save
        format.html {redirect_to article_tags_article_path(@article), notice: 'Dodano Tag do artykułu.' }
        format.json { render :show, status: :created, location: @tag_ref }
      else
        format.html { render :new }
        format.json { render json: @tag_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_refs/1
  # PATCH/PUT /tag_refs/1.json
  def update
    respond_to do |format|
      if @tag_ref.update(tag_ref_params)
        format.html { redirect_to @tag_ref, notice: 'Zmodyfikowano Tag.' }
        format.json { render :show, status: :ok, location: @tag_ref }
      else
        format.html { render :edit }
        format.json { render json: @tag_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_refs/1
  # DELETE /tag_refs/1.json
  def destroy
    @tag_ref.destroy
    respond_to do |format|
      format.html { redirect_to tag_refs_url, notice: 'Usunięto Tag z artykułu.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_ref
      @tag_ref = TagRef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_ref_params
      params.require(:tag_ref).permit(:tag_id, :article_id)
    end
end
