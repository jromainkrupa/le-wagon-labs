class EntrepreneursController < ApplicationController

  def dashboard
  end

  def index
    @entrepreneurs = policy_scope(Entrepreneur)
    authorize @entrepreneurs
  end

  def show
    @entrepreneur = policy_scope(Entrepreneur).find(params[:id])
    authorize @entrepreneur
  end

  def edit
    @entrepreneur = policy_scope(Entrepreneur).find(params[:id])
    authorize @entrepreneur
  end

  def update
    @entrepreneur = Entrepreneur.find(params[:id])
    if @entrepreneur.update(entrepreneur_params)
      redirect_to entrepreneur_path(@entrepreneur)
    else
      render :edit
    end
  end

  private

  def entrepreneur_params
    params.require(:entrepreneur).permit(:first_name, :last_name, :phone, :company_name, :about)
  end

end
