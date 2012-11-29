require 'spec_helper'

describe EventsController do
  before(:each) do
     @event=Factory(:event)
     @attr={:name => "Event", :date  => Time.now}
   end
  render_views
  describe "GET Events'new'" do
    it "should be successful" do
      get :new
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show', :id => @event 
      response.should be_success
    end
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit', :id => @event 
      response.should be_success
    end
  end

end
