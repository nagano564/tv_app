class MoviesController < ApplicationController
  def index
    @popular_movies = MovieAPI.new.get_popular_movies
  end

  def search
  end

  def show
    @movie = MovieAPI.new.get_movie(params[:id]) 
    @recommended_array = MovieAPI.new.get_recommended_movies(params[:id])
    @recommended_array = @recommended_array.first(3)   
  end
end
