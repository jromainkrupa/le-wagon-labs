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
    authorize @alumni
  end

  def update
    @alumni = Alumni.find(params[:id])
    if @alumni.update(alumni_params)
      redirect_to alumni_path(@alumni)
    else
      render :edit
    end
  end

  private

  def alumni_params
    params.require(:alumni).permit(:first_name, :last_name, :about)
  end
end
