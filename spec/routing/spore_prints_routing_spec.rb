require "spec_helper"

describe SporePrintsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/spore_prints").to route_to("spore_prints#index")
    end

    it "routes to #new" do
      expect(:get => "/spore_prints/new").to route_to("spore_prints#new")
    end

    it "routes to #show" do
      expect(:get => "/spore_prints/1").to route_to("spore_prints#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/spore_prints/1/edit").to route_to("spore_prints#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/spore_prints").to route_to("spore_prints#create")
    end

    it "routes to #update" do
      expect(:put => "/spore_prints/1").to route_to("spore_prints#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/spore_prints/1").to route_to("spore_prints#destroy", :id => "1")
    end

  end
end
