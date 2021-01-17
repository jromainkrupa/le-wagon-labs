class AlumnisController < ApplicationController
  def dashboard
    authorize current_alumni
  end

  def index
    @alumnis = policy_scope(Alumni)
    authorize @alumnis
  end

  def show
    @alumni = Alumni.find(params[:id])
    authorize @alumni
  end

  def edit
    @alumni = Alumni.find(params[:id])
    @lang_back = Language.where(category: "back")
    @lang_front = Language.where(category: "front")
    @lang_ux_ui = Language.where(category: "ui_ux")
    authorize @alumni
  end

  def update
    @alumni = Alumni.find(params[:id])
    @alumni.language_tag_list = params[:alumni][:language_tag_list]
    if @alumni.update(alumni_params)
      redirect_to edit_alumni_path(@alumni)
    else
      render :edit
    end
  end

  private

  def alumni_params
    params.require(:alumni).permit(:first_name, :last_name, :about, :language_tag_list)
  end
end
