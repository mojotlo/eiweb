class DevelopmentMailInterceptor  
  def self.delivering_email(message)  
    message.subject = "#{message.subject}"  
    #message.to = put your email here in "" 
  end  
end

