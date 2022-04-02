class TasksController < ApplicationController

  def new
    @goal = Goal.find(params[:goal_id])
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to goal_path(@goal)
    else
      render "new"
    end
  end

  private

  def goal_params
    params.require(:task).permit(:name, :completed, :goal_id)
  end
end
