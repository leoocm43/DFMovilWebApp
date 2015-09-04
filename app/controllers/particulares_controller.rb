class ParticularesController < ApplicationController
  before_action :set_particulare, only: [:show, :edit, :update, :destroy]

  # GET /particulares
  # GET /particulares.json
  def index
    @particulares = Particulare.all
  end

  # GET /particulares/1
  # GET /particulares/1.json
  def show
  end

  # GET /particulares/new
  def new
    @particulare = Particulare.new
  end

  # GET /particulares/1/edit
  def edit
  end

  # POST /particulares
  # POST /particulares.json
  def create
    @particulare = Particulare.new(particulare_params)

    respond_to do |format|
      if @particulare.save
        format.html { redirect_to @particulare, notice: 'Particulare was successfully created.' }
        format.json { render :show, status: :created, location: @particulare }
      else
        format.html { render :new }
        format.json { render json: @particulare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /particulares/1
  # PATCH/PUT /particulares/1.json
  def update
    respond_to do |format|
      if @particulare.update(particulare_params)
        format.html { redirect_to @particulare, notice: 'Particulare was successfully updated.' }
        format.json { render :show, status: :ok, location: @particulare }
      else
        format.html { render :edit }
        format.json { render json: @particulare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /particulares/1
  # DELETE /particulares/1.json
  def destroy
    @particulare.destroy
    respond_to do |format|
      format.html { redirect_to particulares_url, notice: 'Particulare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_particulare
      @particulare = Particulare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def particulare_params
      params.require(:particulare).permit(:placa, :tenencias, :infracciones, :verificaciones)
    end
end
