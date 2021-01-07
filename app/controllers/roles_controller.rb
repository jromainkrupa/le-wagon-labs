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
    if @role.update(role_params)
      redirect_to role_path(@role)
    else
      render :edit
    end
  end

  def edit
    @role = Role.find(params[:id])
    authorize @role
  end

  private

  def role_params
    params.require(:role).permit(:name, :status, :number)
  end
end
