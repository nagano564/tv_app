require 'virtus'

class Movie
  include Virtus.model

  attribute :id, Integer
  attribute :original_name, String
  attribute :name, String
  attribute :popularity, Float
  attribute :vote_count, Integer
  attribute :first_air_date, String
  attribute :poster_path, String
  attribute :genre_ids, Array[Integer]
  attribute :original_language, String
  attribute :backdrop_path, String
  attribute :overview, String
  attribute :origin_country, Array[String]
  attribute :created_by, Array[Hash]
  attribute :number_of_episodes, Integer
  attribute :number_of_seasons, Integer
  
end