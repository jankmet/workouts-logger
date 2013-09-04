class WorkoutItemsController < ApplicationController
  before_action :set_workout_item, only: [:show, :edit, :update, :destroy]

  # GET /workout_items
  # GET /workout_items.json
  def index
    @workout_items = WorkoutItem.all
  end

  # GET /workout_items/1
  # GET /workout_items/1.json
  def show
  end

  # GET /workout_items/new
  def new
    @workout_item = WorkoutItem.new
  end

  # GET /workout_items/1/edit
  def edit
  end

  # POST /workout_items
  # POST /workout_items.json
  def create
    @workout_item = WorkoutItem.new(workout_item_params)

    respond_to do |format|
      if @workout_item.save
        format.html { redirect_to @workout_item, notice: 'Workout item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @workout_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @workout_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workout_items/1
  # PATCH/PUT /workout_items/1.json
  def update
    respond_to do |format|
      if @workout_item.update(workout_item_params)
        format.html { redirect_to @workout_item, notice: 'Workout item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @workout_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_items/1
  # DELETE /workout_items/1.json
  def destroy
    @workout_item.destroy
    respond_to do |format|
      format.html { redirect_to workout_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout_item
      @workout_item = WorkoutItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_item_params
      params.require(:workout_item).permit(:workout_id, :count, :day, :month, :year)
    end
end
