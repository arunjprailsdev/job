class RrbsController < ApplicationController
  before_action :set_rrb, only: [:show, :edit, :update, :destroy]

  # GET /rrbs
  # GET /rrbs.json
  def index
    @rrbs = Rrb.all
  end

  # GET /rrbs/1
  # GET /rrbs/1.json
  def show
  end

  # GET /rrbs/new
  def new
    @rrb = Rrb.new
  end

  # GET /rrbs/1/edit
  def edit
  end

  # POST /rrbs
  # POST /rrbs.json
  def create
    @rrb = Rrb.new(rrb_params)

    respond_to do |format|
      if @rrb.save
        format.html { redirect_to @rrb, notice: 'Rrb was successfully created.' }
        format.json { render :show, status: :created, location: @rrb }
      else
        format.html { render :new }
        format.json { render json: @rrb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rrbs/1
  # PATCH/PUT /rrbs/1.json
  def update
    respond_to do |format|
      if @rrb.update(rrb_params)
        format.html { redirect_to @rrb, notice: 'Rrb was successfully updated.' }
        format.json { render :show, status: :ok, location: @rrb }
      else
        format.html { render :edit }
        format.json { render json: @rrb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rrbs/1
  # DELETE /rrbs/1.json
  def destroy
    @rrb.destroy
    respond_to do |format|
      format.html { redirect_to rrbs_url, notice: 'Rrb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rrb
      @rrb = Rrb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rrb_params
      params.require(:rrb).permit(:PostDate, :PostName, :Description, :TotalPost, :VacancyDetails, :AgeLimit, :EducationalQualification, :SelectionProcess, :ApplicationFee, :Apply)
    end
end
