class PagesController < ApplicationController
  skip_before_action :authenticate_alumni! || :authenticate_entrepreneur!, only: [:home, :contact]

  def home
  end

  def contact
  end
end
