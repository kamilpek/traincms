class MenuTypesController < ApplicationController
  before_action :set_menu_type, only: [:show, :edit, :update, :destroy]

  # GET /menu_types
  # GET /menu_types.json
  def index
    @menu_types = MenuType.all
  end

  # GET /menu_types/1
  # GET /menu_types/1.json
  def show
  end

  # GET /menu_types/new
  def new
    @menu_type = MenuType.new
  end

  # GET /menu_types/1/edit
  def edit
  end

  # POST /menu_types
  # POST /menu_types.json
  def create
    @menu_type = MenuType.new(menu_type_params)

    respond_to do |format|
      if @menu_type.save
        format.html { redirect_to @menu_type, notice: 'Menu type was successfully created.' }
        format.json { render :show, status: :created, location: @menu_type }
      else
        format.html { render :new }
        format.json { render json: @menu_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_types/1
  # PATCH/PUT /menu_types/1.json
  def update
    respond_to do |format|
      if @menu_type.update(menu_type_params)
        format.html { redirect_to @menu_type, notice: 'Menu type was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu_type }
      else
        format.html { render :edit }
        format.json { render json: @menu_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_types/1
  # DELETE /menu_types/1.json
  def destroy
    @menu_type.destroy
    respond_to do |format|
      format.html { redirect_to menu_types_url, notice: 'Menu type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_type
      @menu_type = MenuType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_type_params
      params.require(:menu_type).permit(:title, :content, :order)
    end
end
