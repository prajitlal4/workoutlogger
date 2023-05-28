class WorkoutsController < ApplicationController
  before_action :set_workout, except: [:index, :new, :create]
  
  def index
    @workouts = Workout.all
  end
  
  def show
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      redirect_to @workout
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @workout.update(workout_params)
      redirect_to @workout
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @workout.destroy
    redirect_to root_path
  end

  private

  def workout_params
    params.require(:workout).permit(:split, :duration)
  end

  def set_workout
    @workout = Workout.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end
end