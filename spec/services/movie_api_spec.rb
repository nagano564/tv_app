require 'spec_helper'
require_relative '../../app/services/movie_api'
require 'byebug'

RSpec.describe MovieAPI do
  let(:client){described_class.new}

  describe 'get_popular_shows' do
    it "fetches popular shows api", :vcr do 
      response = client.get_popular_shows
      
      expect(response.first['name']).to eq("The Big Bang Theory")
    end
  end

  describe 'search' do
    it "fetches popular shows api", :vcr do 
      response = client.search("Westworld")
      expect(response["total_results"]).to eq(2)
    end
  end

  describe 'get_show' do
    it "fetches popular shows api", :vcr do 
      response = client.get_show(1418)
      expect(response.name).to eq("The Big Bang Theory")
    end
  end
end