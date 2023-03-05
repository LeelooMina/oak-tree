class SessionsController < ApplicationController
  before_action :already_signed_in?
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Login successful"
      redirect_to root_path
    else
      flash[:notice] = "Login failed."
      render :new, status: :unprocessable_entity

    end
  end

  def destroy
    
  end
end
