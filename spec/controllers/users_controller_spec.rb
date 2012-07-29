require 'spec_helper'

describe UsersController do
  render_views
  describe "GET users/new, signup" do
    it "should be successful" do
      get :new
      response.should be_success
    end
  end
  describe "POST :create" do
    describe "failure" do
      before (:each) do
        @attr = {:name  => "", :email  => ""}
      end
      it 'should not create a user' do
        lambda do
          post :create, :user  => @attr
        end.should_not change(User, :count)
      end
      it "should render the :new page" do
        post :create, :user  => @attr 
        response.should render_template(:new)
      end
    end
    describe "success" do
      before (:each) do
        @attr = {:name  => "Joe", :email  => "Joe@gmi.com"}
      end
      it "should create a user" do
        lambda do
          post :create, :user  => @attr
        end.should change(User, :count).by(1)
      end
      it "should redirect to the contact page" do
        post :create, :user  => @attr
        response.should redirect_to(contact_path)
      end
      it "should have a welcome message" do
        post :create, :user  => @attr
        flash[:success].should =~ /welcome/i
      end
    end
  end
end
