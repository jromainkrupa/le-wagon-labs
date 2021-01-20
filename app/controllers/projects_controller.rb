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
      creation_roles
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
    @applying = @project.candidacies
                        .select { |c| c.status == 'pending' }
                        .map(&:alumni)
                        .include?(pundit_user)
    @role_back = @project.roles.find_by(name: 'back-end')
    @role_front = @project.roles.find_by(name: 'front-end')
    @role_ux_ui = @project.roles.find_by(name: 'UX/UI')
    authorize @project
  end

  def edit
    @project = Project.find(params[:id])
    @role_back = @project.roles.find_by(name: 'back-end')
    @role_front = @project.roles.find_by(name: 'front-end')
    @role_ux_ui = @project.roles.find_by(name: 'UX/UI')
    @lang_back = Language.where(category: 'back')
    @lang_front = Language.where(category: 'front')
    @lang_ux_ui = Language.where(category: 'ui_ux')
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

  def creation_roles
    Role::ROLES.each do |role|
      Role.create(name: role, number: 0, status: 'pending', project: @project)
    end
  end
end
