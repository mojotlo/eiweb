class EventsController < ApplicationController

  def new
    @event=Event.new
  end
  def create
      @event=Event.new(params[:event])
      @user_pass=@event.password

      if password_check(@user_pass)==true
        @event.password=nil
        @event.save
        flash[:success] = "New Event Created!"
        redirect_to @event

      else
        render :new
      end
  end
  
  def show
    @event=Event.find(params[:id])
    @json = @event.to_gmaps4rails
  end

  def index
    @events=Event.all
    @json = Event.all.to_gmaps4rails

    
  end

  def edit
    @event=Event.find(params[:id])
 
  end
 
  def update
    @event=Event.find(params[:id])
    @user_pass=params[:event][:password]

    if password_check(@user_pass) == true
      @event.update_attributes!(params[:event])
      @event.password = nil
      @event.save
      flash[:success] = " Event Updated!"
      redirect_to @event
      
    else
      flash[:error] = "Wrong password!"
      render :edit
    end
  end
  
  def destroy
    @event=Event.find(params[:id])
    @user_pass=params[:event][:password]

    if password_check(@user_pass) == true
      @event.destroy
      flash[:success]= "Event destroyed"
      redirect_to events_path
    else
      flash[:error] = "Wrong password!"
      render :edit
    end
  end  
   
private
 def  password_check (user_pass)
   @password="EI"
   if @password==user_pass 
     return true
    else
      return false
    end
 end
 
end
