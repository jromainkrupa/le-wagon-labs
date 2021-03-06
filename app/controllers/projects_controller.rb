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

    @applyable = @project.candidacies
                        .select { |c| c.status == 'accepted' }
                        .map(&:alumni)
                        .exclude?(pundit_user)

    @applying = @project.candidacies
                        .select { |c| c.status == 'pending' }
                        .map(&:alumni)
                        .include?(pundit_user)
    @language_backs = @project.roles.find_by(name: 'back-end').language_back_tag_list
    @language_fronts = @project.roles.find_by(name: 'front-end').language_front_tag_list
    @language_ux_uis = @project.roles.find_by(name: 'UX/UI').language_ux_ui_tag_list
    authorize @project
  end

  def edit
    @project = Project.find(params[:id])
    @roles = @project.roles.reject{|r| r.name == 'mentor'}
    @lang_back = Language.where(category: 'back')
    @lang_front = Language.where(category: 'front')
    @lang_ux_ui = Language.where(category: 'ui_ux')
    authorize @project
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      if @project.accepted?
        @project.tasks.where(name: nil).destroy_all
        redirect_to project_path(@project)
      else
        redirect_to edit_project_path(@project)
      end
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
      :duration,
      :comment,
      :roles_attributes
    )
  end

  def creation_roles
    Role::ROLES.each do |role|
      Role.create(name: role, number: 0, status: 'pending', project: @project)
    end
  end
end
