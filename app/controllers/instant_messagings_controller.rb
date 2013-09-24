class InstantMessagingsController < ApplicationController
  before_action :set_instant_messaging, only: [:show, :edit, :update, :destroy]

  # GET /instant_messagings
  # GET /instant_messagings.json
  def index
    @instant_messagings = InstantMessaging.all
  end

  # GET /instant_messagings/1
  # GET /instant_messagings/1.json
  def show
  end

  # GET /instant_messagings/new
  def new
    @instant_messaging = InstantMessaging.new
  end

  # GET /instant_messagings/1/edit
  def edit
  end

  # POST /instant_messagings
  # POST /instant_messagings.json
  def create
    @instant_messaging = InstantMessaging.new(instant_messaging_params)

    respond_to do |format|
      if @instant_messaging.save
        format.html { redirect_to @instant_messaging, notice: 'Instant messaging was successfully created.' }
        format.json { render action: 'show', status: :created, location: @instant_messaging }
      else
        format.html { render action: 'new' }
        format.json { render json: @instant_messaging.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instant_messagings/1
  # PATCH/PUT /instant_messagings/1.json
  def update
    respond_to do |format|
      if @instant_messaging.update(instant_messaging_params)
        format.html { redirect_to @instant_messaging, notice: 'Instant messaging was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @instant_messaging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instant_messagings/1
  # DELETE /instant_messagings/1.json
  def destroy
    @instant_messaging.destroy
    respond_to do |format|
      format.html { redirect_to instant_messagings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instant_messaging
      @instant_messaging = InstantMessaging.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instant_messaging_params
      params.require(:instant_messaging).permit(:type, :address)
    end
end
