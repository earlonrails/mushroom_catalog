class SporePrintsController < ApplicationController
  before_action :set_spore_print, only: [:show, :edit, :update, :destroy]

  # GET /spore_prints
  # GET /spore_prints.json
  def index
    @spore_prints = SporePrint.all
  end

  # GET /spore_prints/1
  # GET /spore_prints/1.json
  def show
  end

  # GET /spore_prints/new
  def new
    @spore_print = SporePrint.new
  end

  # GET /spore_prints/1/edit
  def edit
  end

  # POST /spore_prints
  # POST /spore_prints.json
  def create
    @spore_print = SporePrint.new(spore_print_params)

    respond_to do |format|
      if @spore_print.save
        format.html { redirect_to @spore_print, notice: 'Spore print was successfully created.' }
        format.json { render action: 'show', status: :created, location: @spore_print }
      else
        format.html { render action: 'new' }
        format.json { render json: @spore_print.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spore_prints/1
  # PATCH/PUT /spore_prints/1.json
  def update
    respond_to do |format|
      if @spore_print.update(spore_print_params)
        format.html { redirect_to @spore_print, notice: 'Spore print was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @spore_print.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spore_prints/1
  # DELETE /spore_prints/1.json
  def destroy
    @spore_print.destroy
    respond_to do |format|
      format.html { redirect_to spore_prints_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spore_print
      @spore_print = SporePrint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spore_print_params
      params.require(:spore_print).permit(:name, :description, :src)
    end
end
