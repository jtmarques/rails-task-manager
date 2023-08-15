class TasksController < ApplicationController

  # before_action :set_task, only: %i[show]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    strong_params = task_params
    @task = Task.new(strong_params)
    @task.save

    redirect_to tasks_path()
  end



  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  # def set_task
  #   @task = Task.find(params[:id])
  # end
end
