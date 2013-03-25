class PagesController < ApplicationController
  def home
    @title="Empanadas, Photos, Food, Unique New Orleans and Latin American Catering, General Tomfoolery, and More"
    @user=User.new
  end

  def contact
    @title= "Contact us: email, phone, text message alerts, email alerts"
    @user=User.new
  end

  def menu
    @title = "Menu"
    @user=User.new
    
  end

  def blog
    @title = "Blog"
    @user=User.new
  end

  def about
    @title = "A brief, but instructive history of one food truck in New Orleans"
    @user=User.new
  end
  def art
    @title = "'This is not a food truck' Mobile Mural Art and Design Contest"
    @user=User.new
  end
  def catering
    @title = "Latin American Street Food Catering in the finest New Orleans Tradition.  In and Out Catering with Soul Food, Creole Food, and South American dishes."
    @user=User.new
  end
  def text_message
    @title = "Receive text alerts from the Empanada Intifada Food Truck."
    @user=User.new
  end
  def flyer_download
      send_file "#{RAILS_ROOT}/public/images/this-is-not-a-food-truck-blank-flyer2.jpg"
  end
end
