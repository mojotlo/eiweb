class PagesController < ApplicationController
  def home
    @title="Empanadas, Photos, Food, Unique New Orleans and Latin American Catering, General Tomfoolery, and More"
  end

  def contact
    @title= "Contact us: email, phone, text message alerts, email alerts"
  end

  def menu
    @title = "Menu"
  end

  def blog
    @title = "Blog"
  end

  def about
    @title = "A brief, but instructive history of one food truck in New Orleans"
  end
  def art
    @title = "'This is not a food truck' Mobile Mural Art and Design Contest"
  end
  def catering
    @title = "Latin American Street Food Catering in the finest New Orleans Tradition.  In and Out Catering with Soul Food, Creole Food, and South American dishes."
  end
  def flyer_download
      send_file "#{RAILS_ROOT}/public/images/this-is-not-a-food-truck-blank-flyer2.jpg"
  end
end
