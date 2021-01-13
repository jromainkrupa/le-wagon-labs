class LanguageRolesController < ApplicationController

  def new
    @language_role = LanguageRole.new
    authorize @language_role
  end

  def create
    @language_role = LanguageRole.new
    @language_role.role = pundit_user
    @language_role.language = language_role_params # on essaye de trouver une meilleure façon de faire ça
    if @language_role.save
      redirect_to language_role_path(@language_role)
    else
      render :new
    end
  end

  def destroy
    @language_role = LanguageRole.find(params[:id])
    authorize @language_role
    @language_role.destroy
    redirect_to alumni_path(pundit_user)
  end

  private

  def language_role_params
    params.require(:language_role).permit(:language)
  end
end
