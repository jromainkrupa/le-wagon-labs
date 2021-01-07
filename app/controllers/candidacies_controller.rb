class CandidaciesController < ApplicationController
  def new
    @candidacy = Candidacy.new
    authorize @candidacy
  end

  def create
    @candidacy = Candidacy.new(candidacy_params)
    @candidacy.alumni = pundit_user
    authorize @candidacy
    if @candidacy.save
      redirect_to candidacy_path(@candidacy)
    else
      render :new
    end
  end

  def update
    @candidacy = Candidacy.find(params[:id])
    if @candidacy.update(candidacy_params)
      redirect_to candidacy_path(@candidacy)
    else
      render :edit
    end
  end

  def edit
    @candidacy = Candidacy.find(params[:id])
    authorize @candidacy
  end

  private

  def candidacy_params
    params.require(:candidacy).permit(:status)
  end
end
