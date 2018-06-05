require 'httparty'
require_relative '../models/movie'

class MovieAPI
  def initialize
    @api_key = ENV['MY_API_ENV']
    @api_base = 'https://api.themoviedb.org/3/'
  end

  def get_popular_shows
    params = '&sort_by=popularity.desc'
    response = http_get('discover/tv', params)
    response['results'].map { |movie| Movie.new(movie) }
  end

  def search(query)
    response = http_get('search/tv', "&language=en-US&query=#{URI.encode(query)}")
    response['code'] = response.code
    response
  end

  def get_show(id)
    response = http_get("tv/#{id}", '&language=en-US')
    # TODO: need to switch to raising an exception instead
    response['code'] = response.code
    Movie.new(response)
  end

  def get_popular_movies
    params = '&language=en-US&page=1'
    response = http_get('movie/popular', params)
    response['results'].map { |movie| Movie.new(movie) }
  end

  def get_movie(id)
    response = http_get("movie/#{id}", '&language=en-US')
    # TODO: need to switch to raising an exception instead
    response['code'] = response.code
    Movie.new(response) 
  end

  private

  def http_get(resource, query_params)
    HTTParty.get(@api_base + resource + "?api_key=#{@api_key}" + query_params)
  end
end