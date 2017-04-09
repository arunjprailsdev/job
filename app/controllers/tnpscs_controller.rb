class TnpscsController < ApplicationController
  before_action :set_tnpsc, only: [:show, :edit, :update, :destroy]

  # GET /tnpscs
  # GET /tnpscs.json
  def index
    @tnpscs = Tnpsc.all
  end

  # GET /tnpscs/1
  # GET /tnpscs/1.json
  def show
  end

  # GET /tnpscs/new
  def new
    @tnpsc = Tnpsc.new
  end

  # GET /tnpscs/1/edit
  def edit
  end

  # POST /tnpscs
  # POST /tnpscs.json
  def create
    @tnpsc = Tnpsc.new(tnpsc_params)

    respond_to do |format|
      if @tnpsc.save
        format.html { redirect_to @tnpsc, notice: 'Tnpsc was successfully created.' }
        format.json { render :show, status: :created, location: @tnpsc }
      else
        format.html { render :new }
        format.json { render json: @tnpsc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tnpscs/1
  # PATCH/PUT /tnpscs/1.json
  def update
    respond_to do |format|
      if @tnpsc.update(tnpsc_params)
        format.html { redirect_to @tnpsc, notice: 'Tnpsc was successfully updated.' }
        format.json { render :show, status: :ok, location: @tnpsc }
      else
        format.html { render :edit }
        format.json { render json: @tnpsc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tnpscs/1
  # DELETE /tnpscs/1.json
  def destroy
    @tnpsc.destroy
    respond_to do |format|
      format.html { redirect_to tnpscs_url, notice: 'Tnpsc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tnpsc
      @tnpsc = Tnpsc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tnpsc_params
      params.require(:tnpsc).permit(:Post, :Qualification)
    end
end
