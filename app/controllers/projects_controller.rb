class ProjectsController < ApplicationController
  def index
    @projects = policy_scope(Project)
    authorize @projects
  end

  def new
    @project = Project.new
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @project.entrepreneur = pundit_user
    authorize @project
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
    authorize @project
  end

  def edit
    @project = Project.find(params[:id])
    authorize @project
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  private

  def project_params
    params.require(:project).permit(
      :pain,
      :target,
      :solution,
      :name,
      :description,
      :compensation_in_cents,
      :status,
      :is_validated,
      :duration
    )
  end
end
