require "spec_helper"

describe PagesController do
  describe "routing" do

    it "routes to #index" do
      expect(get("/")).to route_to("pages#show", id: 'home')
    end

    it "routes to #show" do
      expect(get("/page_title")).to route_to("pages#show", :id => "page_title")
    end

  end
end
