class CalcsController < ApplicationController
  before_action :set_calc, only: %i[ show edit update destroy ]

  # GET /calcs or /calcs.json
  def index
    @calcs = Calc.all
  end

  # GET /calcs/1 or /calcs/1.json
  def show
  end

  # GET /calcs/new
  def new
    @calc = Calc.new
  end

  # GET /calcs/1/edit
  def edit
  end

  # POST /calcs or /calcs.json
  def create
    @calc = Calc.new(calc_params)

    respond_to do |format|
      if @calc.save
        format.html { redirect_to calc_url(@calc), notice: "Calc was successfully created." }
        # format.json { render :show, status: :created, location: @calc }
      else
        format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @calc.errors, status: :unprocessable_entity }
      end
    end

    # Calcula o IMC utilizando os valores recebidos pelos parâmetros do form na view e salva o resultado no DB.
    height = calc_params[:height].to_f 
  	weight = calc_params[:weight].to_f

  	@calc.bmi = (weight / (height * height)).round(2)
    @calc.save

  end

  def update
  end

  # DELETE /calcs/1 or /calcs/1.json
  def destroy
    @calc.destroy

    respond_to do |format|
      format.html { redirect_to calcs_url, notice: "Calc was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calc
      @calc = Calc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calc_params
      params.require(:calc).permit(:weight, :height, :name)
    end
  
end
