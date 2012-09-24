module PagesHelper

  def flyer_download
      send_file "#{RAILS_ROOT}/images/images/this-is-not-a-food-truck-blank-flyer2.jpg"
  end
end
