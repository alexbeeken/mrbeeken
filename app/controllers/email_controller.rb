class EmailController < ApplicationController
  def subscribe
    begin do
      Email.create!(email: params["email"])
      flash[:notice] = "You have successfully subscribed!"
    rescue
      flash[:alert] = "Something went wrong please try again."
    end
  end

  def unsubscribe
    begin do
      Email.where(email: params["email"]).delete!
      flash[:notice] = "You have successfully unsubscribed from all email communication."
    rescue
      flash[:alert] = "We're sorry, something went wrong with your request."
    end
  end
end
