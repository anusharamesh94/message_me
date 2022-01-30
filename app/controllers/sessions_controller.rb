class SessionsController < ApplicationController

  # GET /sessions/new
  def new
  end

  # POST /sessions or /sessions.json
  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in"
      redirect_to root_path
    else
      flash.now[:error] = "There was something wrong with your login information"
      render 'new'
    end
  end

  # DELETE /sessions/1 or /sessions/1.json
  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out"
    redirect_to login_path
  end
end
