class LanguageRolesController < ApplicationController

  def new
    @language_role = LanguageRole.new
    authorize @language_role
  end

  def create
    @language_role = LanguageRole.new
    @language_role.role = Role.find(params[:role_id])
    @language_role.language = Language.find(params[:lang_id])  # on essaye de trouver une meilleure façon de faire ça
    if @language_role.save
      redirect_to edit_project_path(@language_role.role.project)
    else
      render :new
    end
  end

  def destroy
    @language_role = LanguageRole.find(params[:id])
    authorize @language_role
    @language_role.destroy
    redirect_to edit_project_path(@language_role.role.project)
  end

  private

  def language_role_params
    params.require(:language_role).permit(:language)
  end
end
