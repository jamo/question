class BaseQuestionsController < ApplicationController
  # GET /base_questions
  # GET /base_questions.json
  def index
    @base_questions = BaseQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @base_questions }
    end
  end

  # GET /base_questions/1
  # GET /base_questions/1.json
  def show
    @base_question = BaseQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @base_question }
    end
  end

  # GET /base_questions/new
  # GET /base_questions/new.json
  def new
    @base_question = BaseQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @base_question }
    end
  end

  # GET /base_questions/1/edit
  def edit
    @base_question = BaseQuestion.find(params[:id])
  end

  # POST /base_questions
  # POST /base_questions.json
  def create
    @base_question = BaseQuestion.new(params[:base_question])

    respond_to do |format|
      if @base_question.save
        format.html { redirect_to @base_question, notice: 'Base question was successfully created.' }
        format.json { render json: @base_question, status: :created, location: @base_question }
      else
        format.html { render action: "new" }
        format.json { render json: @base_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /base_questions/1
  # PUT /base_questions/1.json
  def update
    @base_question = BaseQuestion.find(params[:id])

    respond_to do |format|
      if @base_question.update_attributes(params[:base_question])
        format.html { redirect_to @base_question, notice: 'Base question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @base_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_questions/1
  # DELETE /base_questions/1.json
  def destroy
    @base_question = BaseQuestion.find(params[:id])
    @base_question.destroy

    respond_to do |format|
      format.html { redirect_to base_questions_url }
      format.json { head :no_content }
    end
  end
end
