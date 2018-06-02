class ShowsController < ApplicationController
  def index
    @popular_shows = MovieAPI.new.get_popular_shows
  end

  def search
    redirect_to root_path and return if params[:query].nil? 
      
    response = MovieAPI.new.search(params[:query])

    if response['code'] == 200
      @search_results = response['results'].map { |movie| Movie.new(movie) }
      redirect_to shows_search_path
    else
      flash[:alert] = "Search Failed Please Try again"
      redirect_to root_path
    end
  end

  def show
    @show = MovieAPI.new.get_show(params[:id])
  end
  
end
