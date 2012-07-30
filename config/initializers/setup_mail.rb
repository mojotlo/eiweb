#require "development_mail_interceptor"
#ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if #Rails.env.development?


ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "gmail.com",  
  :user_name            => "empanada.intifada",  
  :password             => "Empanarnos",  
  :authentication       => :login,  
  :enable_starttls_auto => true  
}
