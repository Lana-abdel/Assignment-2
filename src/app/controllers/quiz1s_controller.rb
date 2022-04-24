class Quiz1sController < ApplicationController
  before_action :set_quiz1, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!
  # GET /quiz1s or /quiz1s.json
  def index
    @quiz1s = Quiz1.all
  end

  # GET /quiz1s/1 or /quiz1s/1.json
  def show
  end

  # GET /quiz1s/new
  def new
    @quiz1 = Quiz1.new
  end

  # GET /quiz1s/1/edit
  def edit
  end

  # POST /quiz1s or /quiz1s.json
  def create
    @quiz1 = Quiz1.new(quiz1_params)
    if @quiz1.answer_1 == "Lana" 
      @quiz1.update_attribute(:correct_1, true)
      update_points = @quiz1.points + 2 
      @quiz1.update_attribute(:points, update_points)
      #puts(@quiz1.correct_1) 
    end 
    if @quiz1.answer_2 == "jane"
      @quiz1.update_attribute(:correct_3, true)
      update_points = @quiz1.points + 2
      @quiz1.update_attribute(:points, update_points)
    end 

    respond_to do |format|
      if @quiz1.save
        format.html { redirect_to quiz1_url(@quiz1), notice: "Quiz1 was successfully created." }
        format.json { render :show, status: :created, location: @quiz1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quiz1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quiz1s/1 or /quiz1s/1.json
  def update
    respond_to do |format|
      if @quiz1.update(quiz1_params)
        format.html { redirect_to quiz1_url(@quiz1), notice: "Quiz1 was successfully updated." }
        format.json { render :show, status: :ok, location: @quiz1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quiz1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quiz1s/1 or /quiz1s/1.json
  def destroy
    @quiz1.destroy

    respond_to do |format|
      format.html { redirect_to quiz1s_url, notice: "Quiz1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz1
      @quiz1 = Quiz1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quiz1_params
      params.require(:quiz1).permit(:answer_1, :distractor_11, :distractor_21, :answer_2)
    end
end
