class EmailController < ApplicationController
  def subscribe
    begin
      email = Email.create!(address: params["email"])
      @message = "#{email.address}, you have successfully subscribed!"
    rescue => e
      @message = "Something went wrong: #{e.message}"
    end
  end

  def unsubscribe
    begin
      email = Email.where(email: params["email"]).delete!
      @message = "You have successfully unsubscribed #{email.address} from all email communication."
    rescue => e
      @message = "We're sorry, something went wrong: #{e.message}"
    end
  end
end
