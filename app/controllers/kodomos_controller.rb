class KodomosController < ApplicationController
  before_action :set_kodomo, only: [:show, :edit, :update, :destroy]

  # GET /kodomos
  # GET /kodomos.json
  def index
    @kodomos = Kodomo.all
  end

  # GET /kodomos/1
  # GET /kodomos/1.json
  def show
  end

  # GET /kodomos/new
  def new
    @kodomo = Kodomo.new
  end

  # GET /kodomos/1/edit
  def edit
  end

  # POST /kodomos
  # POST /kodomos.json
  def create
    @kodomo = Kodomo.new(kodomo_params)

    respond_to do |format|
      if @kodomo.save
        format.html { redirect_to @kodomo, notice: 'Kodomo was successfully created.' }
        format.json { render :show, status: :created, location: @kodomo }
      else
        format.html { render :new }
        format.json { render json: @kodomo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kodomos/1
  # PATCH/PUT /kodomos/1.json
  def update
    respond_to do |format|
      if @kodomo.update(kodomo_params)
        format.html { redirect_to @kodomo, notice: 'Kodomo was successfully updated.' }
        format.json { render :show, status: :ok, location: @kodomo }
      else
        format.html { render :edit }
        format.json { render json: @kodomo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kodomos/1
  # DELETE /kodomos/1.json
  def destroy
    @kodomo.destroy
    respond_to do |format|
      format.html { redirect_to kodomos_url, notice: 'Kodomo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kodomo
      @kodomo = Kodomo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kodomo_params
      params.require(:kodomo).permit(:title, :genre, :mangaka, :year, :description, :image_url)
    end
end
