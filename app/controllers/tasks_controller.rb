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
    @task = Task.new(completed: false)
    @task.project = Project.find(params[:project_id])
    authorize @task
    if @task.save!
      redirect_to edit_project_path(@task.project, anchor: @task.id)
    else
      render :new
    end
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to edit_project_path(@task.project, anchor: @task.id)
    else
      render :edit
    end
  end

  def edit
    @task = Task.find(params[:id])
    authorize @task
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    if @task.project.tasks.empty?
      redirect_to edit_project_path(@task.project)
    else
      redirect_to edit_project_path(@task.project, anchor: @task.project.tasks.first.id)
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :completed)
  end
end
