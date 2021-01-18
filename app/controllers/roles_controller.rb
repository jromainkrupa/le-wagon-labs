class RolesController < ApplicationController
  def index
    @roles = policy_scope(Role)
    authorize @roles
  end

  def new
    @role = Role.new
    authorize @role
  end

  def create
    @role = Role.new(role_params)
    @role.project = Project.find(params[:id])
    authorize @role
    if @role.save
      redirect_to role_path(@role)
    else
      render :new
    end
  end

  def update
    @role = Role.find(params[:id])
    @role.language_back_tag_list = params[:role][:language_back_tag_list]
    @role.language_front_tag_list = params[:role][:language_front_tag_list]
    @role.language_ux_ui_tag_list = params[:role][:language_ux_ui_tag_list]
    if @role.update(role_params)
      redirect_to edit_project_path(@role.project)
    else
      render :edit
    end
  end

  def edit
    @role = Role.find(params[:id])
    @lang_back = Language.where(category: "back")
    @lang_front = Language.where(category: "front")
    @lang_ux_ui = Language.where(category: "ui_ux")
    authorize @role
  end

  private

  def role_params
    params.require(:role).permit(:name, :status, :number, :language_back_tag_list, :language_front_tag_list, :language_ux_ui_tag_list)
  end
end
