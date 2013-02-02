class RequestMailer < ActionMailer::Base
  default :from => "babrovka@gmail.com"
  

  def new_message(message)
    @message = message
    mail to: "babrovka@gmail.com", subject: 'request', cc: "babrovka@gmail.com"
  end
end
