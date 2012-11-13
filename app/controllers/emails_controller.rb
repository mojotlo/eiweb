class EmailsController < ApplicationController
  def new
    @title = "new email"
    @email = Email.new
  end    
  def create
    @email=Email.new(params[:email])
    if @email.save    
      UserMailer.weekly_email.deliver
      flash[:success] = "Preview your email"
       redirect_to @email
    else 
      @title = "Error - New Email"
      render 'new'
    end
  end
  def index
  end
  def show
    @email=Email.find(params[:id])
  end

end
