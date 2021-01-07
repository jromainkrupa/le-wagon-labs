class LanguageAlumnisController < ApplicationController
  def new
    @language_alumni = Language_alumni.new
    authorize @language_alumni
  end

  def create
    @language_alumni = Language_alumni.new
    @language_alumni.alumni = pundit_user
    @language_alumni.language = language_alumni_params # on essaye de trouver une meilleure façon de faire ça
    if @language_alumni.save
      redirect_to language_alumni_path(@language_alumni)
    else
      render :new
    end
  end

  def destroy
    @language_alumni = Language_alumni.find(params[:id])
    authorize @language_alumni
    @language_alumni.destroy
    redirect_to alumni_path(pundit_user)
  end

  private

  def language_alumni_params
    params.require(:language_alumni).permit(:language)
  end
end
