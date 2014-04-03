class GenusController < ApplicationController
  before_action :set_genus, only: [:show, :edit, :update, :destroy]

  # GET /genus
  # GET /genus.json
  def index
    @genus = Genus.all
  end

  # GET /genus/1
  # GET /genus/1.json
  def show
  end

  # GET /genus/new
  def new
    @genus = Genus.new
  end

  # GET /genus/1/edit
  def edit
  end

  # POST /genus
  # POST /genus.json
  def create
    @genus = Genus.new(genus_params)

    respond_to do |format|
      if @genus.save
        format.html { redirect_to @genus, notice: 'Genus was successfully created.' }
        format.json { render action: 'show', status: :created, location: @genu }
      else
        format.html { render action: 'new' }
        format.json { render json: @genus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genus/1
  # PATCH/PUT /genus/1.json
  def update
    respond_to do |format|
      if @genus.update(genus_params)
        format.html { redirect_to @genus, notice: 'Genus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @genus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genus/1
  # DELETE /genus/1.json
  def destroy
    @genus.destroy
    respond_to do |format|
      format.html { redirect_to genus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genus
      @genus = Genus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genu_params
      params.require(:genus).permit(:name, :description)
    end
end
