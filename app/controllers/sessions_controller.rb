class SessionsController < ApplicationController
  def new
  end

  def create
    author = Author.find_by_email(params[:email])
    if author && author.authenticate(params[:password])
      session[:author_id] = author.id
      redirect_to root_path, notice: "Signed In!"
    else
      flash.now.alert = "Email or password is invalid"
      render :new
    end
  end

  def destroy
    session[:author_id] = nil
    redirect_to root_path, notice: "Signed out"
  end
end
