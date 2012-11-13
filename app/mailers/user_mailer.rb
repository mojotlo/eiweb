class UserMailer < ActionMailer::Base
  default :from => "empanada.intifada@gmail.com"
  def registration_confirmation(user)
    @user=user
    @subject = "Welcome Empanad-ero"
    mail(:to  => user.email, :subject  => @subject)
  end
  def registration_list
    @user=User.last
    @recent_users=User.last(10).reverse
    mail(:to  => "empanada.intifada@gmail.com", :cc => "tsjackson@gmail.com", subject  => "We got a live one:  update the list!")
  end
  def weekly_email
    @email=Email.last
    mail(:to  => "empanada.intifada@gmail.com", :cc => "tsjackson@gmail.com", subject  => "Weekly email sent!")
  end
end
