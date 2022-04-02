class TasksController < ApplicationController

  def new
    @goal = Goal.find(params[:goal_id])
    @task = Task.new
  end

  def create
    @goal = Goal.find(params[:goal_id])
    @task = Task.new(task_params)
    @task.goal = @goal
    @task.completed = false
    @task.save
    redirect_to goal_path(@goal)
  end

  def update
    @task = Task.find(params[:id])
    if @task.completed
      @task.completed = false
    else
      @task.completed = true
    end
    @task.save
    redirect_to goal_path(@task.goal)
  end

  private

  def task_params
    params.require(:task).permit(:name, :completed, :goal_id)
  end
end
