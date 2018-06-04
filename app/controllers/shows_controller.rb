class ShowsController < ApplicationController
  def index
    @popular_shows = MovieAPI.new.get_popular_shows
  end

  def search
    @search_results =[]
    
    if params[:query].nil?
      @error_message = 'No TV show names provided'
      render :search and return
    end

    search_results = MovieAPI.new.search(params[:query])

    if search_results['results'].empty?
      @error_message = "No search results found for: #{params[:query]}"
    elsif search_results.code == 200
      @search_results = search_results['results'].map { |movie| Movie.new(movie) }
    else
      @error_message = "Search Failed Please Try Again"
    end
  end

  def show
    @show = MovieAPI.new.get_show(params[:id])
  end
  
end
