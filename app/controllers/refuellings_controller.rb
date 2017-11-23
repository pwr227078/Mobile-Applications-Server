class RefuellingsController < ApplicationController
  before_action :set_refuelling, only: [:show, :edit, :update, :destroy]

  # GET /refuellings
  # GET /refuellings.json
  def index
    @refuellings = Refuelling.all
  end

  # GET /refuellings/1
  # GET /refuellings/1.json
  def show
  end

  # GET /refuellings/new
  def new
    @refuelling = Refuelling.new
  end

  # GET /refuellings/1/edit
  def edit
  end

  # POST /refuellings
  # POST /refuellings.json
  def create
    @refuelling = Refuelling.new(refuelling_params)

    respond_to do |format|
      if @refuelling.save
        format.html { redirect_to @refuelling, notice: 'Refuelling was successfully created.' }
        format.json { render :show, status: :created, location: @refuelling }
      else
        format.html { render :new }
        format.json { render json: @refuelling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /refuellings/1
  # PATCH/PUT /refuellings/1.json
  def update
    respond_to do |format|
      if @refuelling.update(refuelling_params)
        format.html { redirect_to @refuelling, notice: 'Refuelling was successfully updated.' }
        format.json { render :show, status: :ok, location: @refuelling }
      else
        format.html { render :edit }
        format.json { render json: @refuelling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refuellings/1
  # DELETE /refuellings/1.json
  def destroy
    @refuelling.destroy
    respond_to do |format|
      format.html { redirect_to refuellings_url, notice: 'Refuelling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refuelling
      @refuelling = Refuelling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def refuelling_params
      params.require(:refuelling).permit(:description, :total_price, :liters, :mileage, :datetime)
    end
end
