class TasksController < ApplicationController
  def index
    @tasks = policy_scope(Task)
    authorize @tasks
  end

  def new
    @task = Task.new
    authorize @task
  end

  def create
    @task = Task.new(task_params)
    @task.alumni = pundit_user
    authorize @task
    if @task.save
      redirect_to task_path(@task)
    else
      render :new
    end
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render :edit
    end
  end

  def edit
    @task = Task.find(params[:id])
    authorize @task
  end

  private

  def task_params
    params.require(:task).permit(:name, :completed)
  end
end
