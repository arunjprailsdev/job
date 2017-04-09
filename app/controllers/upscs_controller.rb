class UpscsController < ApplicationController
  before_action :set_upsc, only: [:show, :edit, :update, :destroy]

  # GET /upscs
  # GET /upscs.json
  def index
    @upscs = Upsc.all
  end

  # GET /upscs/1
  # GET /upscs/1.json
  def show
  end

  # GET /upscs/new
  def new
    @upsc = Upsc.new
  end

  # GET /upscs/1/edit
  def edit
  end

  # POST /upscs
  # POST /upscs.json
  def create
    @upsc = Upsc.new(upsc_params)

    respond_to do |format|
      if @upsc.save
        format.html { redirect_to @upsc, notice: 'Upsc was successfully created.' }
        format.json { render :show, status: :created, location: @upsc }
      else
        format.html { render :new }
        format.json { render json: @upsc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upscs/1
  # PATCH/PUT /upscs/1.json
  def update
    respond_to do |format|
      if @upsc.update(upsc_params)
        format.html { redirect_to @upsc, notice: 'Upsc was successfully updated.' }
        format.json { render :show, status: :ok, location: @upsc }
      else
        format.html { render :edit }
        format.json { render json: @upsc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upscs/1
  # DELETE /upscs/1.json
  def destroy
    @upsc.destroy
    respond_to do |format|
      format.html { redirect_to upscs_url, notice: 'Upsc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upsc
      @upsc = Upsc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upsc_params
      params.require(:upsc).permit(:postdate, :post, :education, :lastdate, :more)
    end
end
