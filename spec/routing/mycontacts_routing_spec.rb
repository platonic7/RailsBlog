require "rails_helper"

RSpec.describe MycontactsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mycontacts").to route_to("mycontacts#index")
    end

    it "routes to #new" do
      expect(:get => "/mycontacts/new").to route_to("mycontacts#new")
    end

    it "routes to #show" do
      expect(:get => "/mycontacts/1").to route_to("mycontacts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mycontacts/1/edit").to route_to("mycontacts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mycontacts").to route_to("mycontacts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mycontacts/1").to route_to("mycontacts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mycontacts/1").to route_to("mycontacts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mycontacts/1").to route_to("mycontacts#destroy", :id => "1")
    end

  end
end
