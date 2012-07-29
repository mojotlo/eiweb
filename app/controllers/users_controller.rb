class UsersController < ApplicationController
  def new
    @title = "Sign up"
    @user = User.new
  end    
  def create
    @user=User.new(params[:user])
    if @user.save    
      UserMailer.registration_confirmation(@user).deliver
      UserMailer.registration_list.deliver
      flash[:success] = "Welcome to the Empanada Intifada!"
       redirect_to contact_path
    else 
      @title = "Sign up"
      render 'new'
    end
  end


end
