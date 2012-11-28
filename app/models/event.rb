class Event < ActiveRecord::Base

acts_as_gmappable
def gmaps4rails_address
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  "#{self.address} New Orleans, LA"
end
def gmaps4rails_infowindow
  "#{self.name} - #{self.details} Scheduled for #{self.date.strftime("%m/%d/%Y")} #{self.date.strftime("%I%M%p")} at #{self.address}"
end
end