class CheckboxGroupsController < ApplicationController
  # GET /checkbox_groups
  # GET /checkbox_groups.json
  def index
    @checkbox_groups = CheckboxGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @checkbox_groups }
    end
  end

  # GET /checkbox_groups/1
  # GET /checkbox_groups/1.json
  def show
    @checkbox_group = CheckboxGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @checkbox_group }
    end
  end

  # GET /checkbox_groups/new
  # GET /checkbox_groups/new.json
  def new
    @checkbox_group = CheckboxGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @checkbox_group }
    end
  end

  # GET /checkbox_groups/1/edit
  def edit
    @checkbox_group = CheckboxGroup.find(params[:id])
  end

  # POST /checkbox_groups
  # POST /checkbox_groups.json
  def create
    @checkbox_group = CheckboxGroup.new(params[:checkbox_group])

    respond_to do |format|
      if @checkbox_group.save
        format.html { redirect_to @checkbox_group, notice: 'Checkbox group was successfully created.' }
        format.json { render json: @checkbox_group, status: :created, location: @checkbox_group }
      else
        format.html { render action: "new" }
        format.json { render json: @checkbox_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /checkbox_groups/1
  # PUT /checkbox_groups/1.json
  def update
    @checkbox_group = CheckboxGroup.find(params[:id])

    respond_to do |format|
      if @checkbox_group.update_attributes(params[:checkbox_group])
        format.html { redirect_to @checkbox_group, notice: 'Checkbox group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @checkbox_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkbox_groups/1
  # DELETE /checkbox_groups/1.json
  def destroy
    @checkbox_group = CheckboxGroup.find(params[:id])
    @checkbox_group.destroy

    respond_to do |format|
      format.html { redirect_to checkbox_groups_url }
      format.json { head :no_content }
    end
  end
end
