class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].blank? || params[:name].nil?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to '/'
  end
end
