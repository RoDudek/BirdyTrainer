class BirdyVoicesController < ApplicationController
  # GET /birdy_voices
  # GET /birdy_voices.json
  def index
    @birdy_voices = BirdyVoice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @birdy_voices }
    end
  end

  # GET /birdy_voices/1
  # GET /birdy_voices/1.json
  def show
    @birdy_voice = BirdyVoice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @birdy_voice }
    end
  end

  # GET /birdy_voices/new
  # GET /birdy_voices/new.json
  def new
    @birdy_voice = BirdyVoice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @birdy_voice }
    end
  end

  # GET /birdy_voices/1/edit
  def edit
    @birdy_voice = BirdyVoice.find(params[:id])
  end

  # POST /birdy_voices
  # POST /birdy_voices.json
  def create
    @birdy_voice = BirdyVoice.new(params[:birdy_voice])

    respond_to do |format|
      if @birdy_voice.save
        format.html { redirect_to @birdy_voice, notice: 'Birdy voice was successfully created.' }
        format.json { render json: @birdy_voice, status: :created, location: @birdy_voice }
      else
        format.html { render action: "new" }
        format.json { render json: @birdy_voice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /birdy_voices/1
  # PUT /birdy_voices/1.json
  def update
    @birdy_voice = BirdyVoice.find(params[:id])

    respond_to do |format|
      if @birdy_voice.update_attributes(params[:birdy_voice])
        format.html { redirect_to @birdy_voice, notice: 'Birdy voice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @birdy_voice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /birdy_voices/1
  # DELETE /birdy_voices/1.json
  def destroy
    @birdy_voice = BirdyVoice.find(params[:id])
    @birdy_voice.destroy

    respond_to do |format|
      format.html { redirect_to birdy_voices_url }
      format.json { head :no_content }
    end
  end
end
