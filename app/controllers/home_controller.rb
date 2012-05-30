class HomeController < ApplicationController
  def index
    redirect_to codes_path
  end
end
