require 'spec_helper'
require 'rails_helper'

RSpec.describe ShowsController, type: :controller do

  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET search" do
    it "renders the search template" do
      get :search
      expect(response).to render_template("search")
    end
  end
end