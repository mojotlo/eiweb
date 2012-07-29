class UserMailer < ActionMailer::Base
  default :from => "empanada.intifada@gmail.com"
  def registration_confirmation(user)
    @user=user
    mail(:to  => user.email, :subject  => "Welcome Empanad-ero!")
  end
  def registration_list
    @user=User.last
    @recent_users=User.last(10).reverse
    mail(:to  => "empanada.intifada@gmail.com", :cc => "tsjackson@gmail.com", subject  => "We got a live one:  update the list!")
  end
end
