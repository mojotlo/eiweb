class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def menu
  end

  def blog
  end

  def about
  end
  def art

  end
  def catering
  end
  def flyer_download
      send_file "#{RAILS_ROOT}/public/images/this-is-not-a-food-truck-blank-flyer2.jpg"
  end
end
