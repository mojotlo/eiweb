module EventsHelper
  def day_parse(number)
    if "1" == number
      day_word = "Monday"
    elsif "2" == number
        day_word = "Tuesday"
    elsif "3" == number
      day_word = "Wednesday"    
    elsif "4" == number   
        day_word = "Thursday"    
    elsif "5" == number
      day_word = "Friday"      
    elsif "6" == number
      day_word = "Saturday"
    elsif "0" == number       
      day_word = "Sunday"    
    end
    return day_word
  end

end
