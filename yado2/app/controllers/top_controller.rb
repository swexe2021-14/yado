class TopController < ApplicationController
  def main
    render 'login'
  end

  def login
    tourist = Tourist.find_by(name: params[:name])
    if tourist and BCrypt::Password.new(tourist.pass) == params[:pass]
      session[:login_name] = tourist.name
      redirect_to controller: :hotels , action: :index
    else
      render 'login'
    end
  end

  def logout
    session.delete(:login_name)
    redirect_to root_path
  end
end
