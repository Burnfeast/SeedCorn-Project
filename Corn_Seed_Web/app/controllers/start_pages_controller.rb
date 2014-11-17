class StartPagesController < ApplicationController
  layout 'start'
  def login
  end

  def create
    user = User.find_by(email: params[:start_pages][:email].downcase)
    if user && user.authenticate(params[:start_pages][:password])
      log_in user
      redirect_to homet_url unless user.teacher == false
      redirect_to homes_url unless user.teacher == true
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'login'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
