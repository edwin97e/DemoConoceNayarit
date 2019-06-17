class MagictownsController < ApplicationController
  before_action :set_magictown, only: [:show, :edit, :update, :destroy]

  # GET /magictowns
  # GET /magictowns.json
  def index
    @magictowns = Magictown.all
  end

  # GET /magictowns/1
  # GET /magictowns/1.json
  def show
  end

  # GET /magictowns/new
  def new
    @magictown = Magictown.new
  end

  # GET /magictowns/1/edit
  def edit
  end

  # POST /magictowns
  # POST /magictowns.json
  def create
    @magictown = Magictown.new(magictown_params)

    respond_to do |format|
      if @magictown.save
        format.html { redirect_to @magictown, notice: 'Magictown was successfully created.' }
        format.json { render :show, status: :created, location: @magictown }
      else
        format.html { render :new }
        format.json { render json: @magictown.errors, status: :unprocessable_entity }
      end
    end 
  end

  # PATCH/PUT /magictowns/1
  # PATCH/PUT /magictowns/1.json
  def update
    respond_to do |format|
      if @magictown.update(magictown_params)
        format.html { redirect_to @magictown, notice: 'Magictown was successfully updated.' }
        format.json { render :show, status: :ok, location: @magictown }
      else
        format.html { render :edit }
        format.json { render json: @magictown.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magictowns/1
  # DELETE /magictowns/1.json
  def destroy
    @magictown.destroy
    respond_to do |format|
      format.html { redirect_to magictowns_url, notice: 'Magictown was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_magictown
      @magictown = Magictown.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def magictown_params
      params.require(:magictown).permit(:title, :body, :latitude, :longitude, :img)
    end
end
