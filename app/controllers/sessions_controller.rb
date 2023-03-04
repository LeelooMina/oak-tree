class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      flash[:notice] = "Login successful"
      redirect_to root_path
    else
      flash[:notice] = "Login failed."
      render :new, status: :unprocessable_entity

    end
  end
end
