class ShowsController < ApplicationController
  require 'uri'
  require 'byebug'
  
    def index
      api_key = ENV['MY_API_ENV']
      response = HTTP.get('https://api.themoviedb.org/3/discover/tv?api_key=#{api_key}&language=en-US&sort_by=popularity.desc&page=1&timezone=America%2FNew_York&include_null_first_air_dates=false')
  
      @popular_shows = response.parse['results'].map do |movie|
        Movie.new(movie)
      end
    end

  def search
  end

  def show
  end
  
end
