class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    if name.blank?
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = name
      redirect_to '/'
    end
  end

  def destroy
    name = params[:name]
    name.blank? ? session[:name] = nil : session[:name] = []
    redirect_to '/'
  end

end
