class RadioButtonGroupsController < ApplicationController
  # GET /radio_button_groups
  # GET /radio_button_groups.json
  def index
    @radio_button_groups = RadioButtonGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @radio_button_groups }
    end
  end

  # GET /radio_button_groups/1
  # GET /radio_button_groups/1.json
  def show
    @radio_button_group = RadioButtonGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @radio_button_group }
    end
  end

  # GET /radio_button_groups/new
  # GET /radio_button_groups/new.json
  def new
    @radio_button_group = RadioButtonGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @radio_button_group }
    end
  end

  # GET /radio_button_groups/1/edit
  def edit
    @radio_button_group = RadioButtonGroup.find(params[:id])
  end

  # POST /radio_button_groups
  # POST /radio_button_groups.json
  def create
    @radio_button_group = RadioButtonGroup.new(params[:radio_button_group])

    respond_to do |format|
      if @radio_button_group.save
        format.html { redirect_to @radio_button_group, notice: 'Radio button group was successfully created.' }
        format.json { render json: @radio_button_group, status: :created, location: @radio_button_group }
      else
        format.html { render action: "new" }
        format.json { render json: @radio_button_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /radio_button_groups/1
  # PUT /radio_button_groups/1.json
  def update
    @radio_button_group = RadioButtonGroup.find(params[:id])

    respond_to do |format|
      if @radio_button_group.update_attributes(params[:radio_button_group])
        format.html { redirect_to @radio_button_group, notice: 'Radio button group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @radio_button_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radio_button_groups/1
  # DELETE /radio_button_groups/1.json
  def destroy
    @radio_button_group = RadioButtonGroup.find(params[:id])
    @radio_button_group.destroy

    respond_to do |format|
      format.html { redirect_to radio_button_groups_url }
      format.json { head :no_content }
    end
  end
end
