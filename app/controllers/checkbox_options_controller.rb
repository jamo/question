class CheckboxOptionsController < ApplicationController
  # GET /checkbox_options
  # GET /checkbox_options.json
  def index
    @checkbox_options = CheckboxOption.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @checkbox_options }
    end
  end

  # GET /checkbox_options/1
  # GET /checkbox_options/1.json
  def show
    @checkbox_option = CheckboxOption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @checkbox_option }
    end
  end

  # GET /checkbox_options/new
  # GET /checkbox_options/new.json
  def new
    @checkbox_option = CheckboxOption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @checkbox_option }
    end
  end

  # GET /checkbox_options/1/edit
  def edit
    @checkbox_option = CheckboxOption.find(params[:id])
  end

  # POST /checkbox_options
  # POST /checkbox_options.json
  def create
    @checkbox_option = CheckboxOption.new(params[:checkbox_option])

    respond_to do |format|
      if @checkbox_option.save
        format.html { redirect_to @checkbox_option, notice: 'Checkbox option was successfully created.' }
        format.json { render json: @checkbox_option, status: :created, location: @checkbox_option }
      else
        format.html { render action: "new" }
        format.json { render json: @checkbox_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /checkbox_options/1
  # PUT /checkbox_options/1.json
  def update
    @checkbox_option = CheckboxOption.find(params[:id])

    respond_to do |format|
      if @checkbox_option.update_attributes(params[:checkbox_option])
        format.html { redirect_to @checkbox_option, notice: 'Checkbox option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @checkbox_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkbox_options/1
  # DELETE /checkbox_options/1.json
  def destroy
    @checkbox_option = CheckboxOption.find(params[:id])
    @checkbox_option.destroy

    respond_to do |format|
      format.html { redirect_to checkbox_options_url }
      format.json { head :no_content }
    end
  end
end
