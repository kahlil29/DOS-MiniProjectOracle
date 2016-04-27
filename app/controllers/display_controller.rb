class DisplayController < ApplicationController
  def index
    @movietables = Movietable.order(:NAME)
  end

  def year
   year = params[:year_chosen]
   movies = Movietable.where(YEAR: year).take(5)
   @movies = movies

  end

end
