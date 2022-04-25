class LawquizzesController < ApplicationController
  before_action :set_lawquiz, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!
  # GET /lawquizzes or /lawquizzes.json
  def index
    @lawquizzes = Lawquiz.all
  end

  # GET /lawquizzes/1 or /lawquizzes/1.json
  def show
  end

  # GET /lawquizzes/new
  def new
    @lawquiz = Lawquiz.new
  end

  # GET /lawquizzes/1/edit
  def edit
  end

  # POST /lawquizzes or /lawquizzes.json
  def create
    @lawquiz = Lawquiz.new(lawquiz_params)
    if @lawquiz.answer_1 == "hitting" 
      @lawquiz.update_attribute(:correct, true)
      update_points = @lawquiz.points + 2 
      @lawquiz.update_attribute(:points, update_points)
    end  
    if @lawquiz.answer_2 == "romantic partner" 
      @lawquiz.update_attribute(:correct_22, true)
      update_points = @lawquiz.points + 2 
      @lawquiz.update_attribute(:points, update_points)
       
    end  
    if @lawquiz.answer_3 == "telling both parties to cool off "
      @lawquiz.update_attribute(:correct_32, true)
      update_points = @lawquiz.points + 2 
      @lawquiz.update_attribute(:points, update_points)
       
    end 
    if @lawquiz.answer_4 == "New York" 
      @lawquiz.update_attribute(:correct_42, true)
      update_points = @lawquiz.points + 2 
      @lawquiz.update_attribute(:points, update_points)
      
    end 
    if @lawquiz.answer_5 == "stalking" 
      @lawquiz.update_attribute(:correct_52, true)
      update_points = @lawquiz.points + 2 
      @lawquiz.update_attribute(:points, update_points)
       
    end 
    if @lawquiz.answer_6 == "boyfriend loophole" 
      @lawquiz.update_attribute(:correct_62, true)
      update_points = @lawquiz.points + 2 
      @lawquiz.update_attribute(:points, update_points)
      
    end 
    respond_to do |format|
      if @lawquiz.save
        format.html { redirect_to lawquiz_url(@lawquiz), notice: "Lawquiz was successfully created." }
        format.json { render :show, status: :created, location: @lawquiz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lawquiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lawquizzes/1 or /lawquizzes/1.json
  def update
    respond_to do |format|
      if @lawquiz.update(lawquiz_params)
        format.html { redirect_to lawquiz_url(@lawquiz), notice: "Lawquiz was successfully updated." }
        format.json { render :show, status: :ok, location: @lawquiz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lawquiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lawquizzes/1 or /lawquizzes/1.json
  def destroy
    @lawquiz.destroy

    respond_to do |format|
      format.html { redirect_to lawquizzes_url, notice: "Lawquiz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lawquiz
      @lawquiz = Lawquiz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lawquiz_params
      params.require(:lawquiz).permit(:answer_1, :answer_2, :answer_3, :answer_4, :answer_5, :answer_6, :answer_7)
    end
end
