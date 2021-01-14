class LanguageAlumnisController < ApplicationController
  def new
    @language_alumni = LanguageAlumni.new
    authorize @language_alumni
  end

  def create
    @language_alumni = LanguageAlumni.new
    @language_alumni.alumni = pundit_user
    @language_alumni.language = Language.find(language_alumni_params[:language_id])
    if @language_alumni.save
      redirect_to edit_alumni_path(pundit_user)
    else
      render :new
    end
  end

  def destroy
    @language_alumni = LanguageAlumni.find(params[:id])
    authorize @language_alumni
    @language_alumni.destroy
    redirect_to edit_alumni_path(pundit_user)
  end

  private

  def language_alumni_params
    params.require(:language_alumni).permit(:language_id)
  end
end
