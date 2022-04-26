=begin 
# Project name: Assignment-2  
# Description: This project implements a quiz functionality to educate on domestic violence issues
#File name: statsquizzes_controller.rb
# Description: This file controls crud for a quiz
# Last modified on: 04/25/2022
=end 

class StatsquizzesController < ApplicationController
  before_action :set_statsquiz, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!
  # GET /statsquizzes or /statsquizzes.json
  def index
    @statsquizzes = Statsquiz.all
  end

  # GET /statsquizzes/1 or /statsquizzes/1.json
  def show
  end

  # GET /statsquizzes/new
  def new
    @statsquiz = Statsquiz.new
  end

  # GET /statsquizzes/1/edit
  def edit
  end

  # POST /statsquizzes or /statsquizzes.json
  def create
    @statsquiz = Statsquiz.new(statsquiz_params)
    #these if statements calculate points, and help us change the correct varaiable to indicate if the user got it right or not. 
    if @statsquiz.answer_1 == "20" 
      @statsquiz.update_attribute(:correct, true)
      update_points = @statsquiz.points + 2 
      @statsquiz.update_attribute(:points, update_points)
    end  
    if @statsquiz.answer_2 == "sexual violence" 
      @statsquiz.update_attribute(:correct_2, true)
      update_points = @statsquiz.points + 2 
      @statsquiz.update_attribute(:points, update_points)
      #puts(@stats_quiz.correct_1) 
    end  
    if @statsquiz.answer_3 == "7, 25" 
      @statsquiz.update_attribute(:correct_3, true)
      update_points = @statsquiz.points + 2 
      @statsquiz.update_attribute(:points, update_points)
      #puts(@stats_quiz.correct_1) 
    end 
    if @statsquiz.answer_4 == "10" 
      @statsquiz.update_attribute(:correct_4, true)
      update_points = @statsquiz.points + 2 
      @statsquiz.update_attribute(:points, update_points)
      #puts(@stats_quiz.correct_1) 
    end 
    if @statsquiz.answer_5 == "34%" 
      @statsquiz.update_attribute(:correct_5, true)
      update_points = @statsquiz.points + 2 
      @statsquiz.update_attribute(:points, update_points)
      #puts(@stats_quiz.correct_1) 
    end 
    if @statsquiz.answer_6 == "20,000" 
      @statsquiz.update_attribute(:correct_6, true)
      update_points = @statsquiz.points + 2 
      @statsquiz.update_attribute(:points, update_points)
      #puts(@stats_quiz.correct_1) 
    end 
    respond_to do |format|
      if @statsquiz.save
        format.html { redirect_to statsquiz_url(@statsquiz), notice: "Statsquiz was successfully submitted." }
        format.json { render :show, status: :created, location: @statsquiz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @statsquiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statsquizzes/1 or /statsquizzes/1.json
  def update
    respond_to do |format|
      if @statsquiz.update(statsquiz_params)
        format.html { redirect_to statsquiz_url(@statsquiz), notice: "Statsquiz was successfully updated." }
        format.json { render :show, status: :ok, location: @statsquiz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @statsquiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statsquizzes/1 or /statsquizzes/1.json
  def destroy
    @statsquiz.destroy

    respond_to do |format|
      format.html { redirect_to statsquizzes_url, notice: "Statsquiz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statsquiz
      @statsquiz = Statsquiz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def statsquiz_params
      params.require(:statsquiz).permit(:answer_1, :answer_2, :answer_3, :answer_4, :answer_5, :answer_6, :answer_7, :answer_8, :answer_9, :answer_10)
    end
end
