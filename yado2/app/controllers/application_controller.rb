class ApplicationController < ActionController::Base
private
    def current_tourist
        if session[:login_name]
            tourist = Tourist.find_by(name: session[:login_name])
        else
            tourist = Tourist.create
            session[:lonin_name] = tourist.name
        end
        tourist
    end
    helper_method :current_tourist
end