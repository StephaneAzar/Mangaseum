class ShojosController < ApplicationController
  before_action :set_shojo, only: [:show, :edit, :update, :destroy]

  # GET /shojos
  # GET /shojos.json
  def index
    @shojos = Shojo.all
  end

  # GET /shojos/1
  # GET /shojos/1.json
  def show
  end

  # GET /shojos/new
  def new
    @shojo = Shojo.new
  end

  # GET /shojos/1/edit
  def edit
  end

  # POST /shojos
  # POST /shojos.json
  def create
    @shojo = Shojo.new(shojo_params)

    respond_to do |format|
      if @shojo.save
        format.html { redirect_to @shojo, notice: 'Shojo was successfully created.' }
        format.json { render :show, status: :created, location: @shojo }
      else
        format.html { render :new }
        format.json { render json: @shojo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shojos/1
  # PATCH/PUT /shojos/1.json
  def update
    respond_to do |format|
      if @shojo.update(shojo_params)
        format.html { redirect_to @shojo, notice: 'Shojo was successfully updated.' }
        format.json { render :show, status: :ok, location: @shojo }
      else
        format.html { render :edit }
        format.json { render json: @shojo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shojos/1
  # DELETE /shojos/1.json
  def destroy
    @shojo.destroy
    respond_to do |format|
      format.html { redirect_to shojos_url, notice: 'Shojo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shojo
      @shojo = Shojo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shojo_params
      params.require(:shojo).permit(:title, :genre, :mangaka, :year, :description, :image_url)
    end
end
