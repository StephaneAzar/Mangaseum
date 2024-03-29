class MangasController < ApplicationController
  before_action :set_manga, only: [:show, :edit, :update, :destroy]

  # GET /mangas
  # GET /mangas.json
  def index
    @mangas = Manga.all
  end

  # GET /mangas/1
  # GET /mangas/1.json
  def show
  end

  # GET /mangas/new
  def new
    @manga = Manga.new
  end

  # GET /mangas/1/edit
  def edit
  end

  # POST /mangas
  # POST /mangas.json
  def create
    @manga = Manga.new(manga_params)

    respond_to do |format|
      if @manga.save
        format.html { redirect_to @manga, notice: 'Manga was successfully created.' }
        format.json { render :show, status: :created, location: @manga }
      else
        format.html { render :new }
        format.json { render json: @manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mangas/1
  # PATCH/PUT /mangas/1.json
  def update
    respond_to do |format|
      if @manga.update(manga_params)
        format.html { redirect_to @manga, notice: 'Manga was successfully updated.' }
        format.json { render :show, status: :ok, location: @manga }
      else
        format.html { render :edit }
        format.json { render json: @manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mangas/1
  # DELETE /mangas/1.json
  def destroy
    @manga.destroy
    respond_to do |format|
      format.html { redirect_to mangas_url, notice: 'Manga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manga
      @manga = Manga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manga_params
      params.require(:manga).permit(:title, :genre, :mangaka, :year, :description, :image_url)
    end
end
