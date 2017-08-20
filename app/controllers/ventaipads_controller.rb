class VentaipadsController < ApplicationController
  before_action :set_ventaipad, only: [:show, :edit, :update, :destroy]

  # GET /ventaipads
  # GET /ventaipads.json
  def index
    @ventaipads = Ventaipad.all
  end

  # GET /ventaipads/1
  # GET /ventaipads/1.json
  def show
  end

  # GET /ventaipads/new
  def new
    @ventaipad = Ventaipad.new
  end

  # GET /ventaipads/1/edit
  def edit
  end

  # POST /ventaipads
  # POST /ventaipads.json
  def create
    @ventaipad = Ventaipad.new(ventaipad_params)

    respond_to do |format|
      if @ventaipad.save
        format.html { redirect_to @ventaipad, notice: 'Ventaipad was successfully created.' }
        format.json { render :show, status: :created, location: @ventaipad }
      else
        format.html { render :new }
        format.json { render json: @ventaipad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ventaipads/1
  # PATCH/PUT /ventaipads/1.json
  def update
    respond_to do |format|
      if @ventaipad.update(ventaipad_params)
        format.html { redirect_to @ventaipad, notice: 'Ventaipad was successfully updated.' }
        format.json { render :show, status: :ok, location: @ventaipad }
      else
        format.html { render :edit }
        format.json { render json: @ventaipad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ventaipads/1
  # DELETE /ventaipads/1.json
  def destroy
    @ventaipad.destroy
    respond_to do |format|
      format.html { redirect_to ventaipads_url, notice: 'Ventaipad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ventaipad
      @ventaipad = Ventaipad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ventaipad_params
      params.require(:ventaipad).permit(:precio, :modelo, :color, :cantidad, :memoria)
    end
end
