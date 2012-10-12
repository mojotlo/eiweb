class DevelopmentMailInterceptor  
  def self.delivering_email(message)  
    message.subject = "#{message.subject}"  
    message.to = "tsjackson@gmail.com" 
  end  
end

