=begin 
# Project name: Assignment-2  
# Description: This project implements a quiz functionality to educate on domestic violence issues
#File name: helpquizzes_controller.rb
# Description: This file controls crud for a quiz
# Last modified on: 04/25/2022
=end 

class HelpquizzesController < ApplicationController
  before_action :set_helpquiz, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!
  # GET /helpquizzes or /helpquizzes.json
  def index
    @helpquizzes = Helpquiz.all
  end

  # GET /helpquizzes/1 or /helpquizzes/1.json
  def show
  end

  # GET /helpquizzes/new
  def new
    @helpquiz = Helpquiz.new
  end

  # GET /helpquizzes/1/edit
  def edit
  end

  # POST /helpquizzes or /helpquizzes.json
  def create
    @helpquiz = Helpquiz.new(helpquiz_params) 
    #these if statements calculate points, and help us change the correct varaiable to indicate if the user got it right or not. 
    if @helpquiz.answer_1 == "True" 
      @helpquiz.update_attribute(:correct, true)
      update_points = @helpquiz.points + 2 
      @helpquiz.update_attribute(:points, update_points)
    end  
    if @helpquiz.answer_2 == "True" 
      @helpquiz.update_attribute(:correct_2, true)
      update_points = @helpquiz.points + 2 
      @helpquiz.update_attribute(:points, update_points)
       
    end  
    if @helpquiz.answer_3 == "False"
      @helpquiz.update_attribute(:correct_3, true)
      update_points = @helpquiz.points + 2 
      @helpquiz.update_attribute(:points, update_points)
       
    end 
    if @helpquiz.answer_4 == "I believe you" 
      @helpquiz.update_attribute(:correct_4, true)
      update_points = @helpquiz.points + 2 
      @helpquiz.update_attribute(:points, update_points)
      
    end 
    if @helpquiz.answer_5 == "validate" 
      @helpquiz.update_attribute(:correct_5, true)
      update_points = @helpquiz.points + 2 
      @helpquiz.update_attribute(:points, update_points)
       
    end 
    if @helpquiz.answer_6 == "They still love their partner and believe they will change" 
      @helpquiz.update_attribute(:correct_6, true)
      update_points = @helpquiz.points + 2 
      @helpquiz.update_attribute(:points, update_points)
      
    end 
    respond_to do |format|
      if @helpquiz.save
        format.html { redirect_to helpquiz_url(@helpquiz), notice: "Helpquiz was successfully submitted" }
        format.json { render :show, status: :created, location: @helpquiz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @helpquiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /helpquizzes/1 or /helpquizzes/1.json
  def update
    respond_to do |format|
      if @helpquiz.update(helpquiz_params)
        format.html { redirect_to helpquiz_url(@helpquiz), notice: "Helpquiz was successfully updated." }
        format.json { render :show, status: :ok, location: @helpquiz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @helpquiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /helpquizzes/1 or /helpquizzes/1.json
  def destroy
    @helpquiz.destroy

    respond_to do |format|
      format.html { redirect_to helpquizzes_url, notice: "Helpquiz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_helpquiz
      @helpquiz = Helpquiz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def helpquiz_params 
      puts(:answer_1)
      params.require(:helpquiz).permit(:answer_1, :answer_2, :answer_3, :answer_4, :answer_5, :answer_6, :answer_7) 
    end 
end
