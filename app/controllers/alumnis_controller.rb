class AlumnisController < ApplicationController
  skip_before_action :authenticate_alumni! || :authenticate_entrepreneur!

  def dashboard
  end
end
