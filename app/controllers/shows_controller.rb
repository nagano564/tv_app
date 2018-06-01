class ShowsController < ApplicationController
  require 'uri'
  require 'byebug'
  
  def index
    api_key = ENV['MY_API_ENV']  

    response = HTTParty.get("https://api.themoviedb.org/3/discover/tv?api_key=#{api_key}&sort_by=popularity.desc")

    @popular_shows = response['results'].map do |movie|
      Movie.new(movie)
    end
  end

  def search
  end

  def show
  end
  
end
