class DisplayController < ApplicationController
  def index
    @movietables = Movietable.order(:NAME)
  end

  def year
   year = params[:year_chosen]
   @year = year
   movies = Movietable.where(YEAR: year).take(5)
   @movies = movies

  end

  def search
    actor = params[:actor_search]
    query = "SELECT * FROM movietables WHERE '" + actor.to_str + "' IN(ACTOR1, ACTOR2, ACTOR3)"
    @actor_based_movies = Movietable.find_by_sql(query)
 end

end
