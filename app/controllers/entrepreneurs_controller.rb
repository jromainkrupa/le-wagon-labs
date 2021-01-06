class EntrepreneursController < ApplicationController
  skip_before_action :authenticate_alumni! || :authenticate_entrepreneur!

  def dashboard
  end

  def show
  end

end
