class PagesController < ApplicationController
  skip_before_action :authenticate_alumni! || :authenticate_entrepreneur!

  def home
  end

  def contact
  end
end
