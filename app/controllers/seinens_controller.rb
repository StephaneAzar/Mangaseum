class SeinensController < ApplicationController
  before_action :set_seinen, only: [:show, :edit, :update, :destroy]

  # GET /seinens
  # GET /seinens.json
  def index
    @seinens = Seinen.all
  end

  # GET /seinens/1
  # GET /seinens/1.json
  def show
  end

  # GET /seinens/new
  def new
    @seinen = Seinen.new
  end

  # GET /seinens/1/edit
  def edit
  end

  # POST /seinens
  # POST /seinens.json
  def create
    @seinen = Seinen.new(seinen_params)

    respond_to do |format|
      if @seinen.save
        format.html { redirect_to @seinen, notice: 'Seinen was successfully created.' }
        format.json { render :show, status: :created, location: @seinen }
      else
        format.html { render :new }
        format.json { render json: @seinen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seinens/1
  # PATCH/PUT /seinens/1.json
  def update
    respond_to do |format|
      if @seinen.update(seinen_params)
        format.html { redirect_to @seinen, notice: 'Seinen was successfully updated.' }
        format.json { render :show, status: :ok, location: @seinen }
      else
        format.html { render :edit }
        format.json { render json: @seinen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seinens/1
  # DELETE /seinens/1.json
  def destroy
    @seinen.destroy
    respond_to do |format|
      format.html { redirect_to seinens_url, notice: 'Seinen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seinen
      @seinen = Seinen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seinen_params
      params.require(:seinen).permit(:title, :genre, :mangaka, :year, :description, :image_url)
    end
end
