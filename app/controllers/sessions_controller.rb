class SessionsController < ApplicationController
  
  def new
  end

  def create
    # byebug
    if !params[:name]
      redirect_to sessions_new_path
    elsif params[:name].empty?
      redirect_to sessions_new_path
    elsif params[:name]
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    if session[:name]
      session[:name] = nil
    end
    redirect_to login_path
  end 

end
