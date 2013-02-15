class RadioButtonOptionsController < ApplicationController
  # GET /radio_button_options
  # GET /radio_button_options.json
  def index
    @radio_button_options = RadioButtonOption.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @radio_button_options }
    end
  end

  # GET /radio_button_options/1
  # GET /radio_button_options/1.json
  def show
    @radio_button_option = RadioButtonOption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @radio_button_option }
    end
  end

  # GET /radio_button_options/new
  # GET /radio_button_options/new.json
  def new
    @radio_button_option = RadioButtonOption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @radio_button_option }
    end
  end

  # GET /radio_button_options/1/edit
  def edit
    @radio_button_option = RadioButtonOption.find(params[:id])
  end

  # POST /radio_button_options
  # POST /radio_button_options.json
  def create
    @radio_button_option = RadioButtonOption.new(params[:radio_button_option])

    respond_to do |format|
      if @radio_button_option.save
        format.html { redirect_to @radio_button_option, notice: 'Radio button option was successfully created.' }
        format.json { render json: @radio_button_option, status: :created, location: @radio_button_option }
      else
        format.html { render action: "new" }
        format.json { render json: @radio_button_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /radio_button_options/1
  # PUT /radio_button_options/1.json
  def update
    @radio_button_option = RadioButtonOption.find(params[:id])

    respond_to do |format|
      if @radio_button_option.update_attributes(params[:radio_button_option])
        format.html { redirect_to @radio_button_option, notice: 'Radio button option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @radio_button_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radio_button_options/1
  # DELETE /radio_button_options/1.json
  def destroy
    @radio_button_option = RadioButtonOption.find(params[:id])
    @radio_button_option.destroy

    respond_to do |format|
      format.html { redirect_to radio_button_options_url }
      format.json { head :no_content }
    end
  end
end
