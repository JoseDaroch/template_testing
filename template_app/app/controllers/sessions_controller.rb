class SessionsController < ApplicationController

  def destroy
    log_out
    redirect_to root_url
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user_url(user)
    else
      # Create an error message.
      render 'new'
    end
  end

  def new
  end
end
