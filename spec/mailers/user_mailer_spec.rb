require "spec_helper"

describe UserMailer do
  describe "confirmation" do
    before(:each) do
      @user=Factory(:user)
    end
    it "should render successfully" do
      lambda {UserMailer.registration_confirmation(@user)}.should_not raise_error
    end
    before(:each) do
     @mailer=UserMailer.registration_confirmation(@user)
    end
    it "should deliver successfully" do
      lambda { UserMailer.deliver(@mailer) }.should_not raise_error
    end
  end
end
