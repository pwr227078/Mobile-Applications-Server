class SessionController < ApplicationController

  def new
  end

  def create
    user = User.find_by(mail: params[:session][:mail])
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to user
    else
      redirect_to 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
