require 'spec_helper'
require_relative '../../app/services/movie_api'
require 'byebug'
require "awesome_print"

RSpec.describe MovieAPI do
  let(:client){described_class.new}

  describe 'get_popular_shows' do
    it "fetches popular shows api", :vcr do 
      response = client.get_popular_shows
      
      expect(response.class).to eq(Array)
      expect(response.length).to eq(20)
      expect(response.first['name']).to eq("The Big Bang Theory")
    end

    # it "errors", :vcr do
    #   VCR.use_cassette('tax_reconciler/no_method_error', :record => :new_episodes ) do
    #     api_key_store =  ENV['MY_API_ENV'] 
    #     ENV['MY_API_ENV'] = 'bad_key'
    #     response = client.get_popular_shows
    #     expect(response.status_message).to eq("Invalid API key: You must be granted a valid key.")
    #     ENV['MY_API_ENV'] = api_key_store
    #   end
    # end
  end

  describe 'search' do
    it "fetches popular shows api", :vcr do
      response = client.search("Westworld")
      expect(response["total_results"]).to eq(2)
    end

    it "raises an error when nothing is in the query", :vcr do
      response = client.search("")

      expect(response["errors"][0]).to eq("query must be provided")
    end

  end

  describe 'get_show' do
    it "fetches popular shows api", :vcr do 
      response = client.get_show(1418)
      expect(response.name).to eq("The Big Bang Theory")
    end
  end
end