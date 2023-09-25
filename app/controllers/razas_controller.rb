class RazasController < ApplicationController
  before_action :authenticate_user!, only: %i[ new edit update destroy ]
  before_action :set_raza, only: %i[ show edit update destroy ]

  # GET /razas or /razas.json
  def index
    @razas = Raza.all
  end

  # GET /razas/1 or /razas/1.json
  def show
  end

  # GET /razas/new
  def new
    @raza = Raza.new
  end

  # GET /razas/1/edit
  def edit
  end

  # POST /razas or /razas.json
  def create
    @raza = Raza.new(raza_params)

    respond_to do |format|
      if @raza.save
        format.html { redirect_to raza_url(@raza), notice: "Raza was successfully created." }
        format.json { render :show, status: :created, location: @raza }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @raza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /razas/1 or /razas/1.json
  def update
    respond_to do |format|
      if @raza.update(raza_params)
        format.html { redirect_to raza_url(@raza), notice: "Raza was successfully updated." }
        format.json { render :show, status: :ok, location: @raza }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @raza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /razas/1 or /razas/1.json
  def destroy
    @raza.destroy

    respond_to do |format|
      format.html { redirect_to razas_url, notice: "Raza was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raza
      @raza = Raza.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def raza_params
      params.require(:raza).permit(:nombre, :description,
      :personalidad, :tamano, :pelaje, :foto)
    end
end
