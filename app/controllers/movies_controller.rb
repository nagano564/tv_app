class MoviesController < ApplicationController
  def index
    @popular_movies = MovieAPI.new.get_popular_movies
  end

  def search
  end

  def show
    @movie = MovieAPI.new.get_movie(params[:id])    
  end
end
