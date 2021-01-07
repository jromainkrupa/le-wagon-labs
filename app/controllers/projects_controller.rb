class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
  end

  private

  def project_params
    params.require(:project).permit(:pain, :target, :solution, :name, :description, :compensation_in_cents)
  end
end
