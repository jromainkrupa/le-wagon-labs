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
    format.json {
      @lang_back.each do |lang|
        if lang.language_roles.where(role: @role_back).empty?

          simple_form_for [@project, @role_back, LanguageRole.new(language: lang)], remote: true do |f|
          f.association :language, input_html: {class:"invisible"}, label: content_tag(:div, lang.svg.html_safe, class:'w-8')
          f.submit
          end

        else
          link_to content_tag(:div, lang.svg.html_safe, class:'w-8'), project_role_language_role_path(@project, @role_back, lang.language_roles.where(role: @role_back).first), method: :delete

        end
      end
    }
    @project = Project.find(params[:id])
    authorize @project
  end

  def edit
    @project = Project.find(params[:id])
    @role_back = @project.roles.where(name: 'back-end').first
    @role_front = @project.roles.where(name: 'front-end').first
    @role_ux_ui = @project.roles.where(name: 'UX/UI').first
    @lang_back = Language.where(category: "back")
    @lang_front = Language.where(category: "front")
    @lang_ux_ui = Language.where(category: "ui_ux")
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
    Role.ROLES.each do |role|
      Role.create(name: role, number: 0, status: "pending", project: self)
    end
  end
end
