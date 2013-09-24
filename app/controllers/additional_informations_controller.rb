class AdditionalInformationsController < ApplicationController
  before_action :set_additional_information, only: [:show, :edit, :update, :destroy]

  # GET /additional_informations
  # GET /additional_informations.json
  def index
    @additional_informations = AdditionalInformation.all
  end

  # GET /additional_informations/1
  # GET /additional_informations/1.json
  def show
  end

  # GET /additional_informations/new
  def new
    @additional_information = AdditionalInformation.new
  end

  # GET /additional_informations/1/edit
  def edit
  end

  # POST /additional_informations
  # POST /additional_informations.json
  def create
    @additional_information = AdditionalInformation.new(additional_information_params)

    respond_to do |format|
      if @additional_information.save
        format.html { redirect_to @additional_information, notice: 'Additional information was successfully created.' }
        format.json { render action: 'show', status: :created, location: @additional_information }
      else
        format.html { render action: 'new' }
        format.json { render json: @additional_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /additional_informations/1
  # PATCH/PUT /additional_informations/1.json
  def update
    respond_to do |format|
      if @additional_information.update(additional_information_params)
        format.html { redirect_to @additional_information, notice: 'Additional information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @additional_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /additional_informations/1
  # DELETE /additional_informations/1.json
  def destroy
    @additional_information.destroy
    respond_to do |format|
      format.html { redirect_to additional_informations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_additional_information
      @additional_information = AdditionalInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def additional_information_params
      params.require(:additional_information).permit(:type, :description)
    end
end
